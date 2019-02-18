//---=== modFriendlyHUD ===---
function ChooseMainMenuType(availableMainMenuTypes : array< int >) : int
{
	var fhudMenuMode : int;
	var seed : int;
	var index : int;
	
	fhudMenuMode = StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('fhudMainMenu', 'Virtual_fhudMainMenuMode'));

	if(availableMainMenuTypes.Size() == 1 || fhudMenuMode == 0) //no DLCs available or default menu
		return availableMainMenuTypes[availableMainMenuTypes.Size() - 1];
	
	if(fhudMenuMode == 1) //random menu
	{
		seed = CalcSeed( theGame );
		index = (int)RandNoiseF( seed, availableMainMenuTypes.Size() );
		return availableMainMenuTypes[ index ];
	}
	
	fhudMenuMode -= 2;
	if (availableMainMenuTypes.Contains(fhudMenuMode)) //check if selected menu type is available
		return fhudMenuMode;
	else //if selected menu is not available, fall back to default mode
		return availableMainMenuTypes[availableMainMenuTypes.Size() - 1];
}
//---=== modFriendlyHUD ===---
