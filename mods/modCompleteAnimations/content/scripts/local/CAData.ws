function CANotify( text : string) { theGame.GetGuiManager().ShowNotification( text , 5000 ); }
function CAHudNotify( text : string ) { thePlayer.DisplayHudMessage( text );}

// ==============
//   Animations
// ==============

enum DrinkAnimTypes {
	DAT_cup = 2,
	DAT_bottle = 1,
	DAT_horn = 0,
	DAT_cupcombat = 4,
	DAT_bottlecombat = 3,
	DAT_off = 5
}

enum EatAnimTypes {
	EAT_short = 1,
	EAT_long = 2,
	EAT_horn = 0,
	EAT_shortcombat = 3,
	EAT_longcombat = 4,
	EAT_off = 5
}

enum LootAnimTypes {
	LAT_all = 0,
	LAT_noherb = 1,
	LAT_altall = 2,
	LAT_altnoherb = 3,
	LAT_off = 4
}

enum GrindstoneWorkbenchAnimTypes {
	GWAT_default = 0,
	GWAT_alt = 1,
	GWAT_off = 2
}

function CAEatAnimOn() : bool {		  return CAEatAnimType() != EAT_off;}
function CADrinkAnimOn() : bool {    	  return CADrinkAnimType() != DAT_off;}
function CALootAnimOn() : bool {		  return CALootAnimType() != LAT_off;}
function CAGrindstoneAnimOn() : bool{	  return CAGrindstoneAnimType() != GWAT_off;}
function CAWorkbenchAnimOn() : bool {	  return CAWorkbenchAnimType() != GWAT_off;}
function CAOilAnimOn() : bool {		  return theGame.GetInGameConfigWrapper().GetVarValue('CAanim', 'CAoil');}

function CADrinkAnimType() : int { 	  return StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('CAanim', 'CAdrink')); }
function CAEatAnimType() : int { 		  return StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('CAanim', 'CAeat')); }
function CALootAnimType() : int { 	  return StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('CAanim', 'CAloot')); }
function CAGrindstoneAnimType() : int{	  return StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('CAanim', 'CAgrindstone')); }
function CAWorkbenchAnimType() : int {	  return StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('CAanim', 'CAworkbench'));}

// Settings
function CAAllowAnimsInCombat() : bool{	  return theGame.GetInGameConfigWrapper().GetVarValue('CAsettings', 'CAanimcombat'); }
function CAGrindStoneAutoSheathe() : bool { return theGame.GetInGameConfigWrapper().GetVarValue('CAsettings', 'CAautogrind'); }
function CAOilAutoSheathe() : bool { return theGame.GetInGameConfigWrapper().GetVarValue('CAsettings', 'CAautooil'); }
function CAAllowOilInCombat() : bool {return theGame.GetInGameConfigWrapper().GetVarValue('CAsettings', 'CAoilcombat');}
function CAInvAnimOn() : bool {		  return theGame.GetInGameConfigWrapper().GetVarValue('CAsettings', 'CAinv');}
function CAOilCombat() : bool { return theGame.GetInGameConfigWrapper().GetVarValue('CAsettings', 'CAoilcombat'); }

// Animation Speeds
function CADrinkSpeed() :       float { return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('CAanimspeed', 'CAdrinksp'));}
function CAEatSpeed() :         float { return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('CAanimspeed', 'CAeatsp'));}
function CAOilSpeed() :         float { return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('CAanimspeed', 'CAoilsp'));}
function CAGrindstoneSpeed() :  float { return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('CAanimspeed', 'CAgrindstonesp'));}
function CAWorkbenchSpeed() :   float { return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('CAanimspeed', 'CAworkbenchsp'));}
function CALootStartSpeed() :   float { return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('CAanimspeed', 'CAlootstartsp'));}
function CADBLootStartSpeed() : float { return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('CAanimspeed', 'CAdblootstartsp'));}

//Version
function CAInitalized() : bool { return theGame.GetInGameConfigWrapper().GetVarValue('CAsettings', 'CAinit'); }
function CAGetVersion() : float { return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('CAsettings', 'CAversion') ); }

function CAinit() {
	
	var wrapper : CInGameConfigWrapper;
	wrapper = theGame.GetInGameConfigWrapper();
	
	if (!CAInitalized() || CAGetVersion() < 2.3) {

		// Toggles
		wrapper.SetVarValue('CAanim', 'CAeat', "0" );
		wrapper.SetVarValue('CAanim', 'CAdrink', "0" );
		wrapper.SetVarValue('CAanim', 'CAoil', true);
		wrapper.SetVarValue('CAanim', 'CAloot', "0");
		wrapper.SetVarValue('CAanim', 'CAgrindstone', "1");
		wrapper.SetVarValue('CAanim', 'CAworkbench', "1");
		
		// Animation Speeds
		wrapper.SetVarValue('CAanimspeed', 'CAdrinksp', "1.0" );
		wrapper.SetVarValue('CAanimspeed', 'CAeatsp', "1.0" );
		wrapper.SetVarValue('CAanimspeed', 'CAoilsp', "1.0" );
		wrapper.SetVarValue('CAanimspeed', 'CAgrindstonesp', "1.0" );
		wrapper.SetVarValue('CAanimspeed', 'CAworkbenchsp', "1.0" );
		wrapper.SetVarValue('CAanimspeed', 'CAlootstartsp', "1.0" );
		wrapper.SetVarValue('CAanimspeed', 'CAdblootstartsp', "1.0" );
	
		// Settings
		wrapper.SetVarValue('CAsettings', 'CAanimcombat', true);
		wrapper.SetVarValue('CAsettings', 'CAinv', true);
		wrapper.SetVarValue('CAsettings', 'CAautooil', true);
		wrapper.SetVarValue('CAsettings', 'CAautogrind', true);
		wrapper.SetVarValue('CAsettings', 'CAoilcombat', false);
	
		// Version
		wrapper.SetVarValue('CAsettings', 'CAinit', true);
		wrapper.SetVarValue('CAsettings', 'CAversion', 2.3);
	}
}

