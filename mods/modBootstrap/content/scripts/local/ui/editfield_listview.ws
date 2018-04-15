// ----------------------------------------------------------------------------
//
// KNOWN BUGS:
//  - end of editoperation triggers also triggers (OnSelectedListItem) selection and
//      changes shot (if end of edit action key == enter /space -> set ignoreNextSelect Flag?)
//  - selecting a list element with mouse deactivates selections with space or enter
//  - title is not shown (available only as sane stable "interface")
//
// ----------------------------------------------------------------------------
// "UIView" -> "Controller" callback "interfaces"
abstract class IModUiEditableListCallback extends IModUiMenuCallback {
    public var listMenuRef: CModUiEditableListView;
    public var title: String;
    public var statsLabel: String;
    public var listData: array<SModUiListItem>;

    public function OnInputEnd(inputString: String) {}
    public function OnInputCancel() {}
    public function OnSelected(itemName: String);
}
// ----------------------------------------------------------------------------
struct SModUiListItem {
    // order important for construct calls! do not change!
    var id: String;
    var caption: String;
    var isSelected: bool;
    var prefix: String;
    var suffix: String;
}
// ----------------------------------------------------------------------------
class CModUiEditableListView extends CR4MenuBase {
    protected var callback: IModUiEditableListCallback;
    protected var log: CModLogger;

    private var title: String;
    private var listData: array<SModUiListItem>;

    // -- generic text field flash function
    private var txtField_setText: CScriptedFlashFunction;

    // -- title field
    private var titleFieldId: SFlashArg;

    // -- edit field
    private var editFieldId: SFlashArg;
    private var fieldLabel: String;
    private var inputString: String;
    private var isEditActive: bool;
    private var isShiftHold: bool;
    private var isCtrlHold: bool;
    private var cursorPos: int;

    // -- stats field
    private var statsFieldId: SFlashArg;
    private var statsLabel: String;
    private var statsListItems: int;
    private var statsTotalItems: int;

    // -- hack
    private var HACK_useIgnoreNextSelectOnEditEndHack: bool;
    private var HACK_ignoreNextSelect: bool;
    // FIXME this should be activated ONLY if UI_AcceptInput == IK_Enter
    default HACK_useIgnoreNextSelectOnEditEndHack = true;
    // ------------------------------------------------------------------------
    event OnConfigUI() {
        log = new CModLogger in this;
        log.init('ModUi_EditableList', MLOG_ERROR);

        super.OnConfigUI();
        MakeModal(true);

        callback = (IModUiEditableListCallback)GetMenuInitData();
        callback.listMenuRef = this;

        // -- setup pos, size, etc for additional title, stats and edit fields
        setupFlashFields();

        setTitle(callback.title);
        setListData(callback.listData);
        setStatsLabel(callback.statsLabel);

        registerListeners();
    }
    // ------------------------------------------------------------------------
    private function setupFlashFields() {
        var xOffset, yOffset: int;
        var textfieldSprite : CScriptedFlashSprite;
        var setTextPosition, setBackgroundPosition: CScriptedFlashFunction;
        var setBackgroundSize, setTextBoxSize: CScriptedFlashFunction;

        textfieldSprite = GetMenuFlash().GetChildFlashSprite("Empty");

        setTextPosition = textfieldSprite.GetMemberFlashFunction("SetTextPosition");
        setTextBoxSize = textfieldSprite.GetMemberFlashFunction("SetTextBoxSize");

        setBackgroundPosition = textfieldSprite.GetMemberFlashFunction("SetBackgroundPosition");
        setBackgroundSize = textfieldSprite.GetMemberFlashFunction("SetBackgroundSize");

        // position + size setup
        titleFieldId = FlashArgInt(0);
        statsFieldId = FlashArgInt(1);
        editFieldId = FlashArgInt(2);

        xOffset = 0;
        yOffset = 35;

        setBackgroundSize.InvokeSelfTwoArgs(FlashArgInt(813), FlashArgInt(150));
        setBackgroundPosition.InvokeSelfTwoArgs(
            FlashArgInt(xOffset + 118), FlashArgInt(yOffset + 0));

        setTextPosition.InvokeSelfThreeArgs(titleFieldId,
            FlashArgInt(xOffset + 1), FlashArgInt(yOffset + 2));

        setTextPosition.InvokeSelfThreeArgs(statsFieldId,
            FlashArgInt(xOffset + 2), FlashArgInt(yOffset + 60));

        setTextPosition.InvokeSelfThreeArgs(editFieldId,
            FlashArgInt(xOffset + 2), FlashArgInt(yOffset + 102));

        setTextBoxSize.InvokeSelfThreeArgs(titleFieldId, FlashArgInt(350), FlashArgInt(25));
        setTextBoxSize.InvokeSelfThreeArgs(statsFieldId, FlashArgInt(350), FlashArgInt(20));
        setTextBoxSize.InvokeSelfThreeArgs(editFieldId, FlashArgInt(350), FlashArgInt(20));

        txtField_setText = textfieldSprite.GetMemberFlashFunction("SetTextString");

        // -- clear and move unused field so it don't overlays listarea
        txtField_setText.InvokeSelfTwoArgs(FlashArgInt(3), FlashArgString(""));
        setTextPosition.InvokeSelfThreeArgs(FlashArgInt(3), FlashArgInt(-100), FlashArgInt(-100));
    }
    // ------------------------------------------------------------------------
    event OnMenuShown() {
        callback.OnOpened();
    }
    // ------------------------------------------------------------------------
    event OnBack() {
        // Unfortunately ESC-key is hard bound to OnBack
        CloseMenu();
    }
    // ------------------------------------------------------------------------
    event OnClosingMenu() {
        if (isEditActive) {
            theInput.RestoreContext('MOD_UiInput', true);
        }
        unregisterListeners();
        callback.OnClosed();
    }
    // ------------------------------------------------------------------------
    event OnSelectedListItem(itemName: String) {
        // HACK to ignore selection on end of editing if end-key == select key
        if (HACK_ignoreNextSelect) {
            HACK_ignoreNextSelect = false;
            return false;
        }
        // ignore "non-option" fields
        if (!isEditActive && itemName != "IGNORE") {
            callback.OnSelected(itemName);
        }
    }
    // ------------------------------------------------------------------------
    event OnHelpMe(action: SInputAction) {
        var helpPopup: CModUiHotkeyHelp;
        var hotkeyList: array<SModUiHotkeyHelp>;

        if (IsPressed(action) && isEditActive) {
            helpPopup = new CModUiHotkeyHelp in this;

            hotkeyList.PushBack(HotkeyHelp_from('UI_AcceptInput'));
            hotkeyList.PushBack(HotkeyHelp_from('UI_CancelInput'));
            hotkeyList.PushBack(HotkeyHelp_from('UI_Input_delete', "UI_Input_clear"));

            helpPopup.open("UI_tHelpPopup", "", hotkeyList);
         }
    }
    // ------------------------------------------------------------------------
    private function updateEditField() {
        var prefix, str, suffix: String;
        var len: int;

        if (isEditActive) {
            len = StrLen(inputString);

            if (len > 0) {
                if (cursorPos > 0) {
                    cursorPos = Min(cursorPos, len);
                    prefix = StrLeft(inputString, cursorPos);
                }
                if (cursorPos < len) {
                    cursorPos = Max(0, cursorPos);
                    suffix = StrRight(inputString, len - cursorPos);
                }
            }

            str = fieldLabel + prefix + "|" + suffix;
        } else {
            str = fieldLabel + inputString;
        }

        txtField_setText.InvokeSelfTwoArgs(
            editFieldId, FlashArgString(
                "<font size=\"12\" color=\"#cccccc\">" + str + "</font>"));
    }
    // ------------------------------------------------------------------------
    private function updateStatsField() {
        var stats: String;

        stats = statsLabel + ": " + IntToString(statsListItems);

        if (statsListItems < statsTotalItems) {
            stats += "/" + IntToString(statsTotalItems);
        }

        txtField_setText.InvokeSelfTwoArgs(
            statsFieldId, FlashArgString(
                "<font size=\"13\" color=\"#cfcfcf\">" + stats + "</font>"));
    }
    // ------------------------------------------------------------------------
    public function updateView() {
        var flashArray: CScriptedFlashArray;
        var flashObj: CScriptedFlashObject;
        var item: SModUiListItem;
        var i: int;

        flashArray = m_flashValueStorage.CreateTempFlashArray();

        updateStatsField();
        updateEditField();

        for (i = 0; i < listData.Size(); i += 1) {
            item = listData[i];

            flashObj = m_flashValueStorage.CreateTempFlashObject();
            flashObj.SetMemberFlashString("tag", item.id);
            if (item.isSelected) {
                flashObj.SetMemberFlashString("label",  "<font color=\"#88ff88\">" + item.prefix + "*" + item.caption + item.suffix + "</font>");
            } else {
                flashObj.SetMemberFlashString("label", item.prefix + item.caption + item.suffix);
            }

            flashArray.PushBackFlashObject(flashObj);
        }

        m_flashValueStorage.SetFlashArray("mainmenu.quests.entries", flashArray);
    }
    // ------------------------------------------------------------------------
    public function setTitle(title: String) {
        this.title = title;
        txtField_setText.InvokeSelfTwoArgs(
            titleFieldId, FlashArgString(
                "<font size=\"18\" color=\"#e5e5e5\">" + title + "<font>"));
    }
    // ------------------------------------------------------------------------
    public function setStatsLabel(label: String) {
        this.statsLabel = label;
    }
    // ------------------------------------------------------------------------
    public function setListData(data: array<SModUiListItem>,
        optional itemCount: int, optional totalItems: int)
    {
        this.listData = data;

        // provide optional count elements to override stats based on datalist size
        if (itemCount) {
            statsListItems = itemCount;
        } else {
            statsListItems = data.Size();
        }

        if (totalItems) {
            statsTotalItems = totalItems;
        } else {
            statsTotalItems = statsListItems;
        }
    }
    // ------------------------------------------------------------------------
    public function setInputFieldData(fieldName: String, currentString: String) {
        fieldLabel = fieldName + ": ";
        inputString = currentString;
    }
    // ------------------------------------------------------------------------
    public function startInputMode(fieldName: String, startString: String) {

        // start only if it is not already in edit mode
        if (theInput.GetContext() != 'MOD_UiInput') {
            isEditActive = true;
            fieldLabel = fieldName + ": ";
            inputString = startString;
            cursorPos = StrLen(startString);
            theInput.StoreContext('MOD_UiInput');

            HACK_ignoreNextSelect = HACK_useIgnoreNextSelectOnEditEndHack;

            updateView();
        }
    }
    // ------------------------------------------------------------------------
    private function addChar(char: String) {
        inputString = StrLeft(inputString, cursorPos)
            + char
            + StrRight(inputString, StrLen(inputString) - cursorPos);

        cursorPos += 1;
    }
    // ------------------------------------------------------------------------
    private function delChar(backwards: bool) {
        var len: int = StrLen(inputString);
        if (backwards) {
            // backspace
            if (cursorPos > 0) {

                inputString = StrLeft(inputString, cursorPos -1)
                    + StrRight(inputString, len - cursorPos);

                cursorPos = Max(0, cursorPos - 1);
            }

        } else {
            // delete
            if (cursorPos < len) {
                inputString = StrLeft(inputString, cursorPos)
                    + StrRight(inputString, len - cursorPos - 1);
            }
        }
    }
    // ------------------------------------------------------------------------
    event OnInput(action: SInputAction) {
        if (isEditActive && IsPressed(action)) {

            switch (action.aName) {
                case 'UI_Input_dot':
                    addChar(".");
                    break;

                case 'UI_Input_plus':
                    addChar("+");
                    break;

                case 'UI_Input_minus':
                    addChar("-");
                    break;

                case 'UI_Input_blank':
                    addChar(" ");
                    break;

                case 'UI_Input_backspace':
                    delChar(true);
                    break;

                case 'UI_Input_delete':
                    if (isShiftHold) {
                        cursorPos = 0;
                        inputString = "";
                    } else {
                        delChar(false);
                    }
                    break;

                case 'UI_Input_home':
                    cursorPos = 0;
                    break;

                case 'UI_Input_end':
                    cursorPos = StrLen(inputString);
                    break;

                case 'UI_Input_left':
                    cursorPos = Max(0, cursorPos - 1);
                    break;

                case 'UI_Input_right':
                    cursorPos = Min(cursorPos + 1, StrLen(inputString));
                    break;

                default: addChar(NameToString(action.aName));
            }
            updateView();
        }
    }
    // ------------------------------------------------------------------------
    event OnInputModifier(action: SInputAction) {
        if (isEditActive) {
            if (IsPressed(action)) {
                switch (action.aName) {
                    case 'UI_Input_shift':  isShiftHold = true; break;
                    case 'UI_Input_ctrl':   isCtrlHold = true; break;
                }
            } else if (IsReleased(action)) {
                switch (action.aName) {
                    case 'UI_Input_shift':  isShiftHold = false; break;
                    case 'UI_Input_ctrl':   isCtrlHold = false; break;
                }
            }
        }
    }
    // ------------------------------------------------------------------------
    event OnInputEnd(action: SInputAction) {
        if (IsPressed(action)) {

            theInput.RestoreContext('MOD_UiInput', true);

            isEditActive = false;
            isShiftHold = false;
            isCtrlHold = false;

            switch (action.aName) {
                case 'UI_AcceptInput':
                    callback.OnInputEnd(inputString);
                    break;

                case 'UI_CancelInput':
                    inputString = "";
                    callback.OnInputCancel();
                    break;
            }
        }
    }
    // ------------------------------------------------------------------------
    public function isEditActive() : bool {
        return isEditActive;
    }
    // ------------------------------------------------------------------------
    public function resetEditField() {
        fieldLabel = "";
        inputString = "";
    }
    // ------------------------------------------------------------------------
    private function createCharArray() : array<CName> {
        var chars: array<CName>;

        chars.PushBack('a');
        chars.PushBack('b');
        chars.PushBack('c');
        chars.PushBack('d');
        chars.PushBack('e');
        chars.PushBack('f');
        chars.PushBack('g');
        chars.PushBack('h');
        chars.PushBack('i');
        chars.PushBack('j');
        chars.PushBack('k');
        chars.PushBack('l');
        chars.PushBack('m');
        chars.PushBack('n');
        chars.PushBack('o');
        chars.PushBack('p');
        chars.PushBack('q');
        chars.PushBack('r');
        chars.PushBack('s');
        chars.PushBack('t');
        chars.PushBack('u');
        chars.PushBack('v');
        chars.PushBack('w');
        chars.PushBack('x');
        chars.PushBack('y');
        chars.PushBack('z');

        chars.PushBack('0');
        chars.PushBack('1');
        chars.PushBack('2');
        chars.PushBack('3');
        chars.PushBack('4');
        chars.PushBack('5');
        chars.PushBack('6');
        chars.PushBack('7');
        chars.PushBack('8');
        chars.PushBack('9');

        return chars;
    }
    // ------------------------------------------------------------------------
    protected function registerListeners() {
        var chars: array<CName>;
        var i: int;

        // -- edit text context ONLY (MOD_UiInput)
        theInput.RegisterListener(this, 'OnHelpMe', 'UI_ShowHelp');
        theInput.RegisterListener(this, 'OnInputEnd', 'UI_AcceptInput');
        theInput.RegisterListener(this, 'OnInputEnd', 'UI_CancelInput');
        theInput.RegisterListener(this, 'OnInput', 'UI_Input_blank');
        theInput.RegisterListener(this, 'OnInput', 'UI_Input_dot');
        theInput.RegisterListener(this, 'OnInput', 'UI_Input_minus');
        theInput.RegisterListener(this, 'OnInput', 'UI_Input_plus');
        theInput.RegisterListener(this, 'OnInput', 'UI_Input_backspace');
        theInput.RegisterListener(this, 'OnInput', 'UI_Input_delete');

        theInput.RegisterListener(this, 'OnInput', 'UI_Input_left');
        theInput.RegisterListener(this, 'OnInput', 'UI_Input_right');
        theInput.RegisterListener(this, 'OnInput', 'UI_Input_home');
        theInput.RegisterListener(this, 'OnInput', 'UI_Input_end');

        theInput.RegisterListener(this, 'OnInputModifier', 'UI_Input_shift');
        theInput.RegisterListener(this, 'OnInputModifier', 'UI_Input_ctrl');

        // hack
        chars = createCharArray();
        for (i = 0; i < chars.Size(); i += 1) {
            theInput.RegisterListener(this, 'OnInput', chars[i]);
        }
    }
    // ------------------------------------------------------------------------
    protected function unregisterListeners() {
        var chars: array<CName>;
        var i: int;

        // -- edit text context ONLY (MOD_UiInput)
        theInput.UnregisterListener(this, 'UI_ShowHelp');
        theInput.UnregisterListener(this, 'UI_AcceptInput');
        theInput.UnregisterListener(this, 'UI_CancelInput');
        theInput.UnregisterListener(this, 'UI_Input_blank');
        theInput.UnregisterListener(this, 'UI_Input_dot');
        theInput.UnregisterListener(this, 'UI_Input_minus');
        theInput.UnregisterListener(this, 'UI_Input_plus');
        theInput.UnregisterListener(this, 'UI_Input_backspace');
        theInput.UnregisterListener(this, 'UI_Input_delete');

        theInput.UnregisterListener(this, 'UI_Input_shift');
        theInput.UnregisterListener(this, 'UI_Input_ctrl');
        theInput.UnregisterListener(this, 'UI_Input_left');
        theInput.UnregisterListener(this, 'UI_Input_right');
        theInput.UnregisterListener(this, 'UI_Input_home');
        theInput.UnregisterListener(this, 'UI_Input_end');

        // hack
        chars = createCharArray();
        for (i = 0; i < chars.Size(); i += 1) {
            theInput.UnregisterListener(this, chars[i]);
        }
    }
    // ------------------------------------------------------------------------
    public function close() {
        CloseMenu();
    }
    // ------------------------------------------------------------------------
}
// ----------------------------------------------------------------------------
