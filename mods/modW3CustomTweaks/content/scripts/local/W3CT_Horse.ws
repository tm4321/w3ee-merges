
class W3CT_HorseHandler
{
    private var W3CT_FollowRoad : bool;
    private var bIsFirstCheck : bool;
    default bIsFirstCheck = true;

    public function ToggleFollowRoad(action : SInputAction) : void
    {
        var bAutoFollowRoad : bool;
        var hud : CR4ScriptedHud;
        var inGameConfigWrapper : CInGameConfigWrapper;

        hud = (CR4ScriptedHud)theGame.GetHud();
        inGameConfigWrapper = (CInGameConfigWrapper)theGame.GetInGameConfigWrapper();
        bAutoFollowRoad = inGameConfigWrapper.GetVarValue('W3CT_Horse', 'bAutoFollowRoad') == "true";
        W3CT_FollowRoad = bAutoFollowRoad;

        if (hud && IsPressed(action))
        {
            W3CT_FollowRoad = !bAutoFollowRoad;
        }
    }

    public function GetFollowRoad() : bool
    {
        var bAutoFollowRoad : bool;
        var hud : CR4ScriptedHud;
        var inGameConfigWrapper : CInGameConfigWrapper;

        if (bIsFirstCheck) {
            hud = (CR4ScriptedHud)theGame.GetHud();
            inGameConfigWrapper = (CInGameConfigWrapper)theGame.GetInGameConfigWrapper();
            bAutoFollowRoad = inGameConfigWrapper.GetVarValue('W3CT_Horse', 'bAutoFollowRoad') == "true";
            bIsFirstCheck = false;
            W3CT_FollowRoad = bAutoFollowRoad;
        }
        
        return W3CT_FollowRoad;
    }
}
