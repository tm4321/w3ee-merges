class CIceBreath {

//Ice Breath
	var icebreathEnts : array<CGameplayEntity>;
	var iceBreathToggle : bool; default iceBreathToggle = false;
	var conditionSelection : int;
	
	var witcher : W3PlayerWitcher;
	var inGameConfigWrapper : CInGameConfigWrapper;
	var horse : CNewNPC;
	
//Ice Breath
public function IceBreath(enabled : bool) {

	if(!enabled){
		
				thePlayer.PlayEffect('ice_breath_gameplay');
				IceBreathEnable();
				theGame.GetGuiManager().ShowNotification("Ice Breath: Enabled");
				iceBreathToggle = true;
				
	}
	else{
				thePlayer.StopEffect('ice_breath_gameplay');
				IceBreathDisable();
				theGame.GetGuiManager().ShowNotification("Ice Breath: Disable");
				iceBreathToggle = false;

	}
}

public function IceBreathEnable() {
		
		var i, count : int;
		var size : int;	
				
		witcher = GetWitcherPlayer();		
		count = 0;
		thePlayer.PlayEffectSingle('ice_breath_gameplay');
		FindGameplayEntitiesInRange(icebreathEnts, (CNode)witcher , 30, 1000, '', FLAG_ExcludePlayer);
			
			size = icebreathEnts.Size();
			for(i = 0;i < size;i += 1){
				if(/*!((CActor)icebreathEnts[i]).HasTag('icebreath') && */((CActor)icebreathEnts[i]).IsHuman())
				{
					((CActor)icebreathEnts[i]).AddTag('icebreath');
					((CActor)icebreathEnts[i]).PlayEffectSingle('ice_breath_gameplay');
					count += 1;
				}				
				
			}
			
			//theGame.GetGuiManager().ShowNotification("Ice Breath: Enabled in "+(string)count+" entities");
			icebreathEnts.Clear();
	}
	
	public function HorseBreathEnable(){
		
	
		horse = thePlayer.GetHorseWithInventory();
	
		horse.PlayEffectSingle('breath_fx_cutscene');
	}
	
	
	public function IceBreathDisable(){
				var i : int;
				var size : int;	
				
				thePlayer.StopEffect('ice_breath_gameplay');
				
				witcher = GetWitcherPlayer();
				
				FindGameplayEntitiesInRange(icebreathEnts, (CNode)witcher , 30, 1000 , 'icebreath', FLAG_ExcludePlayer);
				size = icebreathEnts.Size();
				for(i = 0;i < size;i += 1){
					((CActor)icebreathEnts[i]).RemoveTag('icebreath');
					((CActor)icebreathEnts[i]).StopEffect('ice_breath_gameplay');
					
				}
			
			//theGame.GetGuiManager().ShowNotification("Ice Breath: Disabled in "+(string)size+" entities");
			icebreathEnts.Clear();
	}
	
	public function GetIceBreathToggle() : bool{
	
		return(iceBreathToggle);
		
	}
	
	public function isCold() : bool{

		var l_currentArea  : EAreaName;
		var weatherCondition : name;
		
		ReadIBConfig();
			
		l_currentArea = theGame.GetCommonMapManager().GetCurrentArea();
		weatherCondition = GetWeatherConditionName();
		
		
		
		if( (l_currentArea == AN_Skellige_ArdSkellig ||
			l_currentArea == AN_Island_of_Myst ||
			l_currentArea == AN_Prologue_Village_Winter ||
			l_currentArea == AN_Kaer_Morhen ||
			conditionSelection == 2) && (conditionSelection != 1 && conditionSelection != 3)
		)
		{
		//theGame.GetGuiManager().ShowNotification("Cold Places or Forced");
			return true;
		}
		else if((conditionSelection == 1) && 
		( 
				
				weatherCondition == 'WT_Snow' ||
				weatherCondition == 'WT_Blizzard' ||
				weatherCondition == 'WT_Battle' ||
				weatherCondition == 'WT_Battle_Forest' ||
				weatherCondition == 'WT_Mid_Clouds_Fog' ||
				weatherCondition == 'WT_Wild_Hunt' ||
				weatherCondition == 'WT_q501_Blizzard' ||
				weatherCondition == 'WT_q501_Storm' ||
				weatherCondition == 'WT_q501_Blizzard2' ||
				weatherCondition == 'WT_q604_Snow'
			)
		
		){
				//theGame.GetGuiManager().ShowNotification("Cold Weathers");
				return true;
			
		}
		else{
		//theGame.GetGuiManager().ShowNotification("False Conditions or Disabled");
			return false;
		}
		
	}
	
	function ReadIBConfig(){
	
		inGameConfigWrapper = theGame.GetInGameConfigWrapper();
		
		conditionSelection = StringToInt(inGameConfigWrapper.GetVarValue('IceBreathSettings', 'ConditionSelection'));
	
	}
	

	
}//End Class