
class W3CT_HorseHandler
{
    private var bBlockCorrection : bool;
    default bBlockCorrection = false;

    public function BlockCorrection(action : SInputAction) : void
    {
        bBlockCorrection = IsPressed(action);
    }

    public function ShouldBlockCorrection() : bool
    {
        return bBlockCorrection;
    }

    public function ShouldFollowRoad() : bool
    {
        var hud : CR4ScriptedHud;
        var inGameConfigWrapper : CInGameConfigWrapper;

        hud = (CR4ScriptedHud)theGame.GetHud();
        inGameConfigWrapper = (CInGameConfigWrapper)theGame.GetInGameConfigWrapper();

        return inGameConfigWrapper.GetVarValue('W3CT_Horse', 'bAutoFollowRoad') == "true";
    }

    public function ToggleAutoFollowRoad(action : SInputAction) : void
    {
        var flag : string;
        var hud : CR4ScriptedHud;
        var inGameConfigWrapper : CInGameConfigWrapper;

        flag = "true";
        hud = (CR4ScriptedHud)theGame.GetHud();
        inGameConfigWrapper = (CInGameConfigWrapper)theGame.GetInGameConfigWrapper();
        
        if(hud && IsPressed(action))
        {
            if (inGameConfigWrapper.GetVarValue('W3CT_Horse', 'bAutoFollowRoad') == "true")    
            {
                flag = "false";
            }

            inGameConfigWrapper.SetVarValue('W3CT_Horse', 'bAutoFollowRoad', flag);
        }
    }
}
