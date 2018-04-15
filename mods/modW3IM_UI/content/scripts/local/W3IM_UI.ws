
function W3IM_UI_ToggleEnemyHealthbar(action : SInputAction) : void
{
    var flag : string;
    var hud : CR4ScriptedHud;
    var inGameConfigWrapper : CInGameConfigWrapper;

    flag = "true";
    hud = (CR4ScriptedHud)theGame.GetHud();
    inGameConfigWrapper = (CInGameConfigWrapper)theGame.GetInGameConfigWrapper();
    
    if(hud && IsPressed(action))
    {
        if (inGameConfigWrapper.GetVarValue('Hud', 'EnemyFocusModule') == "true")    
        {
        	flag = "false";
        }

        inGameConfigWrapper.SetVarValue('Hud', 'EnemyFocusModule', flag);
        hud.UpdateHudConfig('EnemyFocusModule', true);
    }
}

function W3IM_UI_ToggleEnemyHealthbarOff(): void
{
    var bToggleOff : bool;
    var hud : CR4ScriptedHud;
    var inGameConfigWrapper : CInGameConfigWrapper;

    hud = (CR4ScriptedHud)theGame.GetHud();
    inGameConfigWrapper = (CInGameConfigWrapper)theGame.GetInGameConfigWrapper();
    bToggleOff = inGameConfigWrapper.GetVarValue('W3IM_UI', 'bToggleHealthbarOff') == "true";

    if (hud && bToggleOff)
    {            
        inGameConfigWrapper.SetVarValue('Hud', 'EnemyFocusModule', "false");
        hud.UpdateHudConfig('EnemyFocusModule', true);
    }
}