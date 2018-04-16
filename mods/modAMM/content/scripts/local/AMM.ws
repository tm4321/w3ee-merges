class CAMM{

var inGameConfigWrapper : CInGameConfigWrapper;

var firstload : bool; default firstload = false;

//Arrays
var hairArray : array<name>;
var altHairArray : array<string>;//alternate hairstyles
var headgearArray : array<string>;
var facegearArray : array<string>;
var capeArray : array<string>;

var shouldersArray : array<string>;
var armsArray : array<string>;

var accessoriesArray : array<string>;

var chestGearArray : array<string>;
var bootsGearArray : array<string>;
var glovesGearArray : array<string>;
var legsGearArray : array<string>;

var CchestGearArray : array<string>;
var CbootsGearArray : array<string>;
var CglovesGearArray : array<string>;
var ClegsGearArray : array<string>;

var fullbodyGearArray : array<string>;

var headArray : array<name>;
var headTattooArray : array<name>;
var headMarkArray : array<name>;
var headMarkTattooArray : array<name>;


//Toggles
var stswEnabled : bool;
var svswEnabled : bool;
var crossbowEnabled : bool;

var headEnabled : bool;
var bodyEnabled : bool;

var armorEnabled : bool;
var hairEnabled : bool;
var altHairEnabled : bool;
var beardrefreshEnabled : bool;

var headgearEnabled : bool;
var facegearEnabled : bool;
var capeEnabled : bool;

var shouldersEnabled : bool;
var armsEnabled : bool;

var accessories1Enabled : bool;
var accessories2Enabled : bool;
var accessories3Enabled : bool;
var accessories4Enabled : bool;
var accessories5Enabled : bool;
var accessories6Enabled : bool;
var accessories7Enabled : bool;
var accessories8Enabled : bool;
var accessories9Enabled : bool;
var accessories10Enabled : bool;

var chestGearEnabled : bool;
var bootsGearEnabled : bool;
var glovesGearEnabled : bool;
var legsGearEnabled : bool;

var CchestGearEnabled : bool;
var CbootsGearEnabled : bool;
var CglovesGearEnabled : bool;
var ClegsGearEnabled : bool;

var fullbodyGearEnabled : bool;

var robberymaskEnabled : bool;


//Selections
var hairSelection : Int32;
var altHairSelection : Int32;
var beardSelection : Int32;

var headgearSelection : Int32;
var facegearSelection : Int32;
var capeSelection : Int32;

var shouldersSelection : Int32;
var armsSelection : Int32;

var accessories1Selection : Int32;
var accessories2Selection : Int32;
var accessories3Selection : Int32;
var accessories4Selection : Int32;
var accessories5Selection : Int32;
var accessories6Selection : Int32;
var accessories7Selection : Int32;
var accessories8Selection : Int32;
var accessories9Selection : Int32;
var accessories10Selection : Int32;

var chestSelection : Int32;
var glovesSelection : Int32;
var bootsSelection : Int32;
var legsSelection : Int32;

var CchestSelection : Int32;
var CglovesSelection : Int32;
var CbootsSelection : Int32;
var ClegsSelection : Int32;

var fullbodySelection : Int32;

//Previous Ents
var altHairPrevTemp : CEntityTemplate;
var headgearPrevTemp : CEntityTemplate;
var capePrevTemp : CEntityTemplate;
var facegearPrevTemp : CEntityTemplate;

var shouldersPrevTemp : CEntityTemplate;
var armsPrevTemp : CEntityTemplate;

var accessories1PrevTemp : CEntityTemplate;
var accessories2PrevTemp : CEntityTemplate;
var accessories3PrevTemp : CEntityTemplate;
var accessories4PrevTemp : CEntityTemplate;
var accessories5PrevTemp : CEntityTemplate;
var accessories6PrevTemp : CEntityTemplate;
var accessories7PrevTemp : CEntityTemplate;
var accessories8PrevTemp : CEntityTemplate;
var accessories9PrevTemp : CEntityTemplate;
var accessories10PrevTemp : CEntityTemplate;


var chestGearPrevTemp : CEntityTemplate;
var bootsGearPrevTemp : CEntityTemplate;
var glovesGearPrevTemp : CEntityTemplate;
var legsGearPrevTemp : CEntityTemplate;

var CchestGearPrevTemp : CEntityTemplate;
var CbootsGearPrevTemp : CEntityTemplate;
var CglovesGearPrevTemp : CEntityTemplate;
var ClegsGearPrevTemp : CEntityTemplate;

var fullbodyGearPrevTemp : CEntityTemplate;

//Disable AMM vars
var AMMDisabled : bool;
var AMMisDisabled : bool;

//Sword Effects Vars
public var runeLvlArray : array<name>;
public var runeTypeArray : array<name>;
public var oilArray : array<name>;

var IgniFXEnabled : bool;
var AardFXEnabled : bool;
var QuenFXEnabled : bool;
var YrdenFXEnabled : bool;
var AxiiFXEnabled : bool;

var RuneLvlEnabled	: bool;
var RuneAlwaysEnabled : bool;
var RuneLvlSelection : int;

var RuneTypeEnabled	: bool;
var RuneTypeSelection : int;

var OilEnabled	: bool;
var OilDisabled : bool;
var OilTypeSelection : int;

var svscabEnabled : bool;
var svscabPrevTemp : CEntityTemplate;
var svscabArray : array<string>;
var svscabSelection : Int32;

var stscabEnabled : bool;
var stscabPrevTemp : CEntityTemplate;
var stscabArray : array<string>;
var stscabSelection : Int32;

var hideSvscab : bool;
var hideStscab : bool;

var svscabEnt : CEntity;
var stscabEnt : CEntity;


//SWORDS
var svSwordEnabled : bool;
var svSwordPrevEnt : CEntity;
var svSwordCurEnt : CEntity;
var svSwordArray : array<string>;
var svSwordSelection : Int32;

var stSwordEnabled : bool;
var stSwordPrevEnt : CEntity;
var stSwordCurEnt : CEntity;
var stSwordArray : array<string>;
var stSwordSelection : Int32;

var aeronFXArray : array<CName>;
var aeronFXEnabled : bool;
var aeronFXSelection : Int32;

var irisFXArray : array<CName>;
var irisFXEnabled : bool;
var irisFXSelection : Int32;

//Mark and Tattoo
var enableMark : bool;
var enableTattoo : bool;

//Toxicity
var toxArray : array<name>;
var toxSelection : Int32;
var toxEnabled : bool;

//Toggles Bools
var headcapeToggle : bool; default headcapeToggle = false;

//########## AMM for Roach Vars ##################################
var saddleEnabled : bool;
var saddlePrevTemp : CEntityTemplate;
var saddleArray : array<string>;
var saddleSelection : Int32;

var blindersEnabled : bool;
var blindersPrevTemp : CEntityTemplate;
var blindersArray : array<string>;
var blindersSelection : Int32;

var hairsEnabled : bool;
var hairsPrevTemp : CEntityTemplate;
var hairsArray : array<string>;
var hairsSelection : Int32;

var tailsEnabled : bool;
var tailsPrevTemp : CEntityTemplate;
var tailsArray : array<string>;
var tailsSelection : Int32;

var bagsEnabled : bool;
var bagsPrevTemp : CEntityTemplate;
var bagsArray : array<string>;
var bagsSelection : Int32;

var trophiesEnabled : bool;
var trophiesPrevTemp : CEntityTemplate;
var trophiesArray : array<string>;
var trophiesSelection : Int32;

var reinsEnabled : bool;
var reinsPrevTemp : CEntityTemplate;
var reinsSelection : Int32;
var reinsArray : array<string>;

var harnessEnabled : bool;
var harnessPrevTemp : CEntityTemplate;
var harnessArray : array<string>;
var harnessSelection : Int32;

var horseEnabled : bool;
var horseArray : array<name>;
var horseSelection : Int32;	

var devilFXToggle : bool;
var ruinFXToggle : bool;
var iceFXToggle : bool;

var accArray : array<string>;

var acc1Enabled : bool;
var acc1PrevTemp : CEntityTemplate;
var acc1Selection : Int32;

var acc2Enabled : bool;
var acc2PrevTemp : CEntityTemplate;
var acc2Selection : Int32;

var acc3Enabled : bool;
var acc3PrevTemp : CEntityTemplate;
var acc3Selection : Int32;

var acc4Enabled : bool;
var acc4PrevTemp : CEntityTemplate;
var acc4Selection : Int32;

var acc5Enabled : bool;
var acc5PrevTemp : CEntityTemplate;
var acc5Selection : Int32;

var blockRoachRefresh: bool;
var hideSaddle : bool;
var hideReins : bool;
var hideHarness : bool;
var hideBags : bool;
var hideBlinders : bool;
var hideHair : bool;
var hideTail : bool;
var hideTrophy : bool;

//Favourites

var favouriteSelection : int;
default favouriteSelection = -1;

//Slider
var ammslider : CName;

	
//################################################################

 
public function Init() {
		
		if(!firstload){
			theInput.RegisterListener( this, 'OnButtonPressed', 'RefreshAP' );
			theInput.RegisterListener( this, 'OnHeadCapePress', 'AMMHeadCape' );
			theInput.RegisterListener( this, 'OnAMMToggle', 'AMMToggle' );
			
			//Favourites
			theInput.RegisterListener( this, 'OnSelectFavsUp', 'AMMFavsUp' );
			theInput.RegisterListener( this, 'OnSelectFavsDown', 'AMMFavsDown' );
			theInput.RegisterListener( this, 'OnSaveFavourite', 'AMMSaveFavourite' );
			theInput.RegisterListener( this, 'OnLoadFavourite', 'AMMLoadFavourite' );
			
			//Sliders
			theInput.RegisterListener( this, 'OnSliderUp', 'AMMSliderUp' );
			theInput.RegisterListener( this, 'OnSliderDown', 'AMMSliderDown' );
			
			inGameConfigWrapper = theGame.GetInGameConfigWrapper();

			
			AMMDisabled = inGameConfigWrapper.GetVarValue('AMM', 'AMMDisabled');
			AMMisDisabled = AMMDisabled;
			
			
			InitHeadArrays();
			
			HairArrayInit();
			AltHairArrayInit();
			HeadGearArrayInit();
			CapeArrayInit();
			FaceGearArrayInit();
			
			ShouldersArrayInit();
			ArmsArrayInit();
			
			AccessoriesArrayInit();
			
			ChestGearArrayInit();
			BootsGearArrayInit();
			legsGearArrayInit();
			GlovesGearArrayInit();
			
			CChestGearArrayInit();
			CBootsGearArrayInit();
			ClegsGearArrayInit();
			CGlovesGearArrayInit();
			
			FullBodyGearArrayInit();
			
			InitSword();
			
			ToxArrayInit();
			
			InitAMMRoach();
			
			firstload = true;
		}
			AMMDisabled = inGameConfigWrapper.GetVarValue('AMM', 'AMMDisabled');
				
			if(!AMMisDisabled && !AMMDisabled){
				RefreshAppearance();
				//RefreshRoach();
				//theGame.GetGuiManager().ShowNotification("So Refresh");
			}		
			else if(!AMMisDisabled && AMMDisabled){
				DisableAMM();
				RefreshAppearance();
				//RefreshRoach();
				theGame.GetGuiManager().ShowNotification("AMM Disabled/Saved Config");
			}
			else if(AMMisDisabled && !AMMDisabled){
				EnableAMM();
				RefreshAppearance();
				//RefreshRoach();
				theGame.GetGuiManager().ShowNotification("AMM Enabled/Restored Config");
			}
			
}

event OnButtonPressed (action : SInputAction){
	
	if(IsPressed(action)){
		AMMDisabled = inGameConfigWrapper.GetVarValue('AMM', 'AMMDisabled');
				
			if(!AMMisDisabled && !AMMDisabled){
				RefreshAppearance();
				//RefreshRoach();
			}		
			else if(!AMMisDisabled && AMMDisabled){
				DisableAMM();
				RefreshAppearance();
				//RefreshRoach();
			}
			else if(AMMisDisabled && !AMMDisabled){
				EnableAMM();
				RefreshAppearance();
				//RefreshRoach();
				
			}
			RefreshRoach();
				
	}
}

event OnSliderUp (action : SInputAction){

	if (IsPressed(action)){
		if(!AMMDisabled){	
			switch(ammslider){
			
			case 'stsword':
			stSwordSelection+=1;
			if(stSwordSelection > (stSwordArray.Size()-1)){stSwordSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordSelection', stSwordSelection);
			theGame.GetGuiManager().ShowNotification((string)stSwordArray[stSwordSelection]);
			SwordsChange();
			break;
			case 'svsword':
			svSwordSelection+=1;
			if(svSwordSelection > (svSwordArray.Size()-1)){svSwordSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordSelection', svSwordSelection);
			theGame.GetGuiManager().ShowNotification((string)svSwordArray[svSwordSelection]);
			SwordsChange();
			break;
			
			case 'stscab':
			stscabSelection+=1;
			if(stscabSelection > (stscabArray.Size()-1)){stscabSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabSelection', stscabSelection);
			theGame.GetGuiManager().ShowNotification((string)stscabArray[stscabSelection]);
			ApplyStscab();
			break;
			case 'svscab':
			svscabSelection+=1;
			if(svscabSelection > (svscabArray.Size()-1)){svscabSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabSelection', svscabSelection);
			theGame.GetGuiManager().ShowNotification((string)svscabArray[svscabSelection]);
			ApplySvscab();
			break;
			case 'headgear':
			headgearSelection+=1;
			if(headgearSelection > (headgearArray.Size()-1)){headgearSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearSelection', headgearSelection);
			theGame.GetGuiManager().ShowNotification((string)headgearArray[headgearSelection]);
			ApplyHeadGear();
			break;
			case 'acc1':
			accessories1Selection+=1;
			if(accessories1Selection > (accessoriesArray.Size()-1)){accessories1Selection = 0;}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearSelection', accessories1Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories1Selection]);
			ApplyAccessories();
			break;
			case 'acc2':
			accessories2Selection+=1;
			if(accessories2Selection > (accessoriesArray.Size()-1)){accessories2Selection = 0;}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearSelection', accessories2Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories2Selection]);
			ApplyAccessories();
			break;
			case 'acc3':
			accessories3Selection+=1;
			if(accessories3Selection > (accessoriesArray.Size()-1)){accessories3Selection = 0;}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearSelection', accessories3Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories3Selection]);
			ApplyAccessories();
			break;
			case 'acc4':
			accessories4Selection+=1;
			if(accessories4Selection > (accessoriesArray.Size()-1)){accessories4Selection = 0;}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearSelection', accessories4Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories4Selection]);
			ApplyAccessories();
			break;
			case 'acc5':
			accessories5Selection+=1;
			if(accessories5Selection > (accessoriesArray.Size()-1)){accessories5Selection = 0;}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearSelection', accessories5Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories5Selection]);
			ApplyAccessories();
			break;
			case 'acc6':
			accessories6Selection+=1;
			if(accessories6Selection > (accessoriesArray.Size()-1)){accessories6Selection = 0;}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearSelection', accessories6Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories6Selection]);
			ApplyAccessories();
			break;
			case 'acc7':
			accessories7Selection+=1;
			if(accessories7Selection > (accessoriesArray.Size()-1)){accessories7Selection = 0;}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearSelection', accessories7Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories7Selection]);
			ApplyAccessories();
			break;
			case 'acc8':
			accessories8Selection+=1;
			if(accessories8Selection > (accessoriesArray.Size()-1)){accessories8Selection = 0;}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearSelection', accessories8Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories8Selection]);
			ApplyAccessories();
			break;
			case 'acc9':
			accessories9Selection+=1;
			if(accessories9Selection > (accessoriesArray.Size()-1)){accessories9Selection = 0;}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearSelection', accessories9Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories9Selection]);
			ApplyAccessories();
			break;
			case 'acc10':
			accessories10Selection+=1;
			if(accessories10Selection > (accessoriesArray.Size()-1)){accessories10Selection = 0;}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearSelection', accessories10Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories10Selection]);
			ApplyAccessories();
			break;
			case 'chest':
			chestSelection+=1;
			if(chestSelection > (chestGearArray.Size()-1)){chestSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMSets', 'ChestSelection', chestSelection);
			theGame.GetGuiManager().ShowNotification((string)chestGearArray[chestSelection]);
			ApplyChestGear();
			break;
			case 'gloves':
			glovesSelection+=1;
			if(glovesSelection > (glovesGearArray.Size()-1)){glovesSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesSelection', glovesSelection);
			theGame.GetGuiManager().ShowNotification((string)glovesGearArray[glovesSelection]);
			ApplyGlovesGear();
			break;
			case 'legs':
			legsSelection+=1;
			if(legsSelection > (legsGearArray.Size()-1)){legsSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMSets', 'LegsSelection', legsSelection);
			theGame.GetGuiManager().ShowNotification((string)legsGearArray[legsSelection]);
			ApplyLegsGear();
			break;
			case 'boots':
			bootsSelection+=1;
			if(bootsSelection > (bootsGearArray.Size()-1)){bootsSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMSets', 'BootsSelection', bootsSelection);
			theGame.GetGuiManager().ShowNotification((string)bootsGearArray[bootsSelection]);
			ApplyBootsGear();
			break;
			
			case 'cchest':
			CchestSelection+=1;
			if(CchestSelection > (CchestGearArray.Size()-1)){CchestSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestSelection', CchestSelection);
			theGame.GetGuiManager().ShowNotification((string)CchestGearArray[CchestSelection]);
			ApplyCChestGear();
			break;
			
			case 'cgloves':
			CglovesSelection+=1;
			if(CglovesSelection > (CglovesGearArray.Size()-1)){CglovesSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesSelection', CglovesSelection);
			theGame.GetGuiManager().ShowNotification((string)CglovesGearArray[CglovesSelection]);
			ApplyCGlovesGear();
			break;
			case 'clegs':
			ClegsSelection+=1;
			if(ClegsSelection > (ClegsGearArray.Size()-1)){ClegsSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsSelection', ClegsSelection);
			theGame.GetGuiManager().ShowNotification((string)ClegsGearArray[ClegsSelection]);
			ApplyCLegsGear();
			break;
			case 'cboots':
			CbootsSelection+=1;
			if(CbootsSelection > (CbootsGearArray.Size()-1)){CbootsSelection = 0;}
			inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsSelection', CbootsSelection);
			theGame.GetGuiManager().ShowNotification((string)CbootsGearArray[CbootsSelection]);
			ApplyCBootsGear();
			break;
						
			
			default:
				theGame.GetGuiManager().ShowNotification("Not Selected or Invalid Slider");
				break;
			}
			
		}

	}

}

event OnSliderDown (action : SInputAction){

	if (IsPressed(action)){
		if(!AMMDisabled){
			switch(ammslider){
			
			case 'stsword':
				stSwordSelection-=1;
				if(stSwordSelection < 0){stSwordSelection = (stSwordArray.Size()-1);}
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordSelection', stSwordSelection);
				theGame.GetGuiManager().ShowNotification((string)stSwordArray[stSwordSelection]);
				SwordsChange();
			break;
			case 'svsword':
				svSwordSelection-=1;
				if(svSwordSelection < 0){svSwordSelection = (svSwordArray.Size()-1);}
				inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordSelection', svSwordSelection);
				theGame.GetGuiManager().ShowNotification((string)svSwordArray[svSwordSelection]);
				SwordsChange();
			break;
			case 'stscab':
				stscabSelection-=1;
				if(stscabSelection < 0){stscabSelection = (stscabArray.Size()-1);}
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabSelection', stscabSelection);
				theGame.GetGuiManager().ShowNotification((string)stscabArray[stscabSelection]);
				ApplyStscab();
			break;
			case 'svscab':
				svscabSelection-=1;
				if(svscabSelection < 0){svscabSelection = (svscabArray.Size()-1);}
				inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabSelection', svscabSelection);
				theGame.GetGuiManager().ShowNotification((string)svscabArray[svscabSelection]);
				ApplySvscab();
			break;
			case 'headgear':
				headgearSelection-=1;
				if(headgearSelection < 0){headgearSelection = (headgearArray.Size()-1);}
				inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearSelection', headgearSelection);
				theGame.GetGuiManager().ShowNotification((string)headgearArray[headgearSelection]);
				ApplyHeadGear();
			break;
			case 'acc1':
			accessories1Selection-=1;
			if(accessories1Selection < 0){accessories1Selection = (accessoriesArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearSelection', accessories1Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories1Selection]);
			ApplyAccessories();
			break;
			case 'acc2':
			accessories2Selection-=1;
			if(accessories2Selection < 0){accessories2Selection = (accessoriesArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearSelection', accessories2Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories2Selection]);
			ApplyAccessories();
			break;
			case 'acc3':
			accessories3Selection-=1;
			if(accessories3Selection < 0){accessories3Selection = (accessoriesArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearSelection', accessories3Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories3Selection]);
			ApplyAccessories();
			break;
			case 'acc4':
			accessories4Selection-=1;
			if(accessories4Selection < 0){accessories4Selection = (accessoriesArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearSelection', accessories4Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories4Selection]);
			ApplyAccessories();
			break;
			case 'acc5':
			accessories5Selection-=1;
			if(accessories5Selection < 0){accessories5Selection = (accessoriesArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearSelection', accessories5Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories5Selection]);
			ApplyAccessories();
			break;
			case 'acc6':
			accessories6Selection-=1;
			if(accessories6Selection < 0){accessories6Selection = (accessoriesArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearSelection', accessories6Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories6Selection]);
			ApplyAccessories();
			break;
			case 'acc7':
			accessories7Selection-=1;
			if(accessories7Selection < 0){accessories7Selection = (accessoriesArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearSelection', accessories7Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories7Selection]);
			ApplyAccessories();
			break;
			case 'acc8':
			accessories8Selection-=1;
			if(accessories8Selection < 0){accessories8Selection = (accessoriesArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearSelection', accessories8Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories8Selection]);
			ApplyAccessories();
			break;
			case 'acc9':
			accessories9Selection-=1;
			if(accessories9Selection < 0){accessories9Selection = (accessoriesArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearSelection', accessories9Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories9Selection]);
			ApplyAccessories();
			break;
			case 'acc10':
			accessories10Selection-=1;
			if(accessories10Selection < 0){accessories10Selection = (accessoriesArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearSelection', accessories10Selection);
			theGame.GetGuiManager().ShowNotification((string)accessoriesArray[accessories10Selection]);
			ApplyAccessories();
			break;
			case 'chest':
			chestSelection-=1;
			if(chestSelection < 0){chestSelection = (chestGearArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMSets', 'ChestSelection', chestSelection);
			theGame.GetGuiManager().ShowNotification((string)chestGearArray[chestSelection]);
			ApplyChestGear();
			break;
			case 'gloves':
			glovesSelection-=1;
			if(glovesSelection < 0){glovesSelection = (glovesGearArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesSelection', glovesSelection);
			theGame.GetGuiManager().ShowNotification((string)glovesGearArray[glovesSelection]);
			ApplyGlovesGear();
			break;
			case 'legs':
			legsSelection-=1;
			if(legsSelection < 0){legsSelection = (legsGearArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMSets', 'LegsSelection', legsSelection);
			theGame.GetGuiManager().ShowNotification((string)legsGearArray[legsSelection]);
			ApplyLegsGear();
			break;
			case 'boots':
			bootsSelection-=1;
			if(bootsSelection < 0){bootsSelection = (bootsGearArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMSets', 'BootsSelection', bootsSelection);
			theGame.GetGuiManager().ShowNotification((string)bootsGearArray[bootsSelection]);
			ApplyBootsGear();
			break;
			
			case 'cchest':
			CchestSelection-=1;
			if(CchestSelection < 0){CchestSelection = (CchestGearArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestSelection', CchestSelection);
			theGame.GetGuiManager().ShowNotification((string)CchestGearArray[CchestSelection]);
			ApplyCChestGear();
			break;
			case 'cgloves':
			CglovesSelection-=1;
			if(CglovesSelection < 0){CglovesSelection = (CglovesGearArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesSelection', CglovesSelection);
			theGame.GetGuiManager().ShowNotification((string)CglovesGearArray[CglovesSelection]);
			ApplyCGlovesGear();
			break;
			case 'clegs':
			ClegsSelection-=1;
			if(ClegsSelection < 0){ClegsSelection = (ClegsGearArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsSelection', ClegsSelection);
			theGame.GetGuiManager().ShowNotification((string)ClegsGearArray[ClegsSelection]);
			ApplyCLegsGear();
			break;
			case 'cboots':
			CbootsSelection-=1;
			if(CbootsSelection < 0){CbootsSelection = (CbootsGearArray.Size()-1);}
			inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsSelection', CbootsSelection);
			theGame.GetGuiManager().ShowNotification((string)CbootsGearArray[CbootsSelection]);
			ApplyCBootsGear();
			break;
			
			
			default:
				theGame.GetGuiManager().ShowNotification("Not Selected or Invalid Slider");
			break;
			}
		
		}

	}

}


function ReadSettings(){

//Toggles
				bodyEnabled = inGameConfigWrapper.GetVarValue('AMM', 'BodyEnabled');
				headEnabled = inGameConfigWrapper.GetVarValue('AMM', 'HeadEnabled');
				
				stswEnabled = inGameConfigWrapper.GetVarValue('AMM', 'StswEnabled');
				svswEnabled = inGameConfigWrapper.GetVarValue('AMM', 'SvswEnabled');
				crossbowEnabled = inGameConfigWrapper.GetVarValue('AMM', 'CrossbowEnabled');
				
				hairEnabled = inGameConfigWrapper.GetVarValue('AMMHead', 'HairEnabled');
				altHairEnabled = inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairEnabled');
				beardrefreshEnabled = inGameConfigWrapper.GetVarValue('AMMHead', 'BeardRefreshEnabled');
				headgearEnabled = inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearEnabled');
				facegearEnabled = inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearEnabled');	
				capeEnabled = inGameConfigWrapper.GetVarValue('AMMCape', 'CapeEnabled');
				
				shouldersEnabled = inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearEnabled');
				armsEnabled = inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsEnabled');
				
				accessories1Enabled = inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearEnabled');
				accessories2Enabled = inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearEnabled');
				accessories3Enabled = inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearEnabled');
				accessories4Enabled = inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearEnabled');
				accessories5Enabled = inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearEnabled');
				accessories6Enabled = inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearEnabled');
				accessories7Enabled = inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearEnabled');
				accessories8Enabled = inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearEnabled');
				accessories9Enabled = inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearEnabled');
				accessories10Enabled = inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearEnabled');
								
				chestGearEnabled = inGameConfigWrapper.GetVarValue('AMMSets', 'ChestEnabled');
				glovesGearEnabled = inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesEnabled');
				legsGearEnabled = inGameConfigWrapper.GetVarValue('AMMSets', 'LegsEnabled');
				bootsGearEnabled = inGameConfigWrapper.GetVarValue('AMMSets', 'BootsEnabled');
				
				CchestGearEnabled = inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestEnabled');
				CglovesGearEnabled = inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesEnabled');
				ClegsGearEnabled = inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsEnabled');
				CbootsGearEnabled = inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsEnabled');
				
				fullbodyGearEnabled = inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodyEnabled');
								
				robberymaskEnabled = inGameConfigWrapper.GetVarValue('AMMHead', 'BanditMaskEnabled');
				
				//Selections
				hairSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMHead', 'HairSelection'));
				altHairSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairSelection'));
				beardSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMHead', 'BeardSelection'));
				headgearSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearSelection'));
				facegearSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearSelection'));	
				capeSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMCape', 'CapeSelection'));
				
				shouldersSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearSelection'));
				armsSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsSelection'));
				
				accessories1Selection = StringToInt(inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearSelection'));
				accessories2Selection = StringToInt(inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearSelection'));
				accessories3Selection = StringToInt(inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearSelection'));
				accessories4Selection = StringToInt(inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearSelection'));
				accessories5Selection = StringToInt(inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearSelection'));
				accessories6Selection = StringToInt(inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearSelection'));
				accessories7Selection = StringToInt(inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearSelection'));
				accessories8Selection = StringToInt(inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearSelection'));
				accessories9Selection = StringToInt(inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearSelection'));
				accessories10Selection = StringToInt(inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearSelection'));
				
				chestSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSets', 'ChestSelection'));
				bootsSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSets', 'BootsSelection'));
				glovesSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesSelection'));
				legsSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSets', 'LegsSelection'));
				
				CchestSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestSelection'));
				CbootsSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsSelection'));
				CglovesSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesSelection'));
				ClegsSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsSelection'));
				
				fullbodySelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodySelection'));
				
				stscabEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabEnabled');
				stscabSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabSelection'));
		
				svscabEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabEnabled');
				svscabSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabSelection'));
												
				hideStscab = inGameConfigWrapper.GetVarValue('AMMStSwords', 'HideStscab');
				hideSvscab = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'HideSvscab');
				
				stSwordEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordEnabled');
				stSwordSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordSelection'));
		
				svSwordEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordEnabled');
				svSwordSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordSelection'));
				
				enableMark = inGameConfigWrapper.GetVarValue('AMMHead', 'EnableMark');
				enableTattoo = inGameConfigWrapper.GetVarValue('AMMHead', 'EnableTattoo');
				
				toxEnabled = inGameConfigWrapper.GetVarValue('AMMHead', 'ToxEnabled');
				toxSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMHead', 'ToxSelection'));

}

function RefreshAppearance(){
				
						
	ReadSettings();			
				
	
	//Robbery Mask
	if(robberymaskEnabled){
	
	inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearEnabled', false);
	inGameConfigWrapper.SetVarValue('AMMHead', 'BeardRefreshEnabled', false);
	facegearEnabled = false;
	beardrefreshEnabled = false;
		
	}
	
		
	//Equiped Armor Refresh
	
	ArmorToogle(bodyEnabled); //armorEnabled
	//BodyToogle(bodyEnabled);//Hides Body
	
	//Set Pieces
	ApplyChestGear();
	ApplyGlovesGear();
	ApplyLegsGear();
	ApplyBootsGear();
	
	//Common Set Pieces
	ApplyCChestGear();
	ApplyCGlovesGear();
	ApplyCLegsGear();
	ApplyCBootsGear();
	
	ApplyFullBodyGear();
	
	ApplyShoulders();
	ApplyArms();
	ApplyAccessories();
	
	//HeadGear Refresh
	ApplyHeadGear();
	
	//CapeRefresh
	ApplyCape();
	
	//Weapons Refresh
	WeaponsToogle();
	
	ApplySvscab();
	ApplyStscab();
	
	//Face Gear
	ApplyFaceGear();
	
	if(headEnabled){
				
		ToxToggle();
		
		//if(!toxEnabled){
		SetHead();
		//}
		
		if(robberymaskEnabled){
			robberymaskToogle(true);
		}
		/*else{
			robberymaskToogle(false);
		}*/
		
		
		ApplyAltHair();
		
		//Hair Refresh
		if(!hairEnabled){
			Hidehair();
		}
		else{
			SetHairstyle();
		}
		
	}
	//Head Refresh
	HeadToogle(headEnabled);
	
	
	SvScabbardsToggle();
	StScabbardsToggle();
	
	SwordsChange();

}

function SaveToggles(){

//Saving previous toggles state
				inGameConfigWrapper.SetVarValue('Hidden', 'BodyEnabled', inGameConfigWrapper.GetVarValue('AMM', 'BodyEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'HeadEnabled', inGameConfigWrapper.GetVarValue('AMM', 'HeadEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'AutohideEnabled', inGameConfigWrapper.GetVarValue('AMM', 'AutohideEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'StswEnabled',inGameConfigWrapper.GetVarValue('AMM', 'StswEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'SvswEnabled',inGameConfigWrapper.GetVarValue('AMM', 'SvswEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'CrossbowEnabled',inGameConfigWrapper.GetVarValue('AMM', 'CrossbowEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'ToxEnabled',inGameConfigWrapper.GetVarValue('AMMHead', 'ToxEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'HairEnabled',inGameConfigWrapper.GetVarValue('AMMHead', 'HairEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'AltHairEnabled',inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'BeardRefreshEnabled', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardRefreshEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearEnabled', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearEnabled', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearEnabled'));	
				inGameConfigWrapper.SetVarValue('Hidden', 'CapeEnabled', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearEnabled', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'ArmsEnabled', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearEnabled', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearEnabled', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearEnabled', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearEnabled', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearEnabled', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearEnabled', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearEnabled', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearEnabled', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearEnabled', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearEnabled', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'ChestEnabled', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'GlovesEnabled', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'LegsEnabled', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'BootsEnabled', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'CChestEnabled', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesEnabled', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'CLegsEnabled', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'CBootsEnabled', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'FullBodyEnabled', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodyEnabled'));
								
				inGameConfigWrapper.SetVarValue('Hidden', 'BanditMaskEnabled', inGameConfigWrapper.GetVarValue('AMMHead', 'BanditMaskEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'HideSvscab', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'HideSvscab'));
				inGameConfigWrapper.SetVarValue('Hidden', 'SvscabEnabled', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordEnabled', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordEnabled'));
				
				inGameConfigWrapper.SetVarValue('Hidden', 'HideStscab', inGameConfigWrapper.GetVarValue('AMMStSwords', 'HideStscab'));
				inGameConfigWrapper.SetVarValue('Hidden', 'StscabEnabled', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordEnabled', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordEnabled'));
}


function EnableAMM(){

								
				//Enabling AMM
				inGameConfigWrapper.SetVarValue('AMM', 'BodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BodyEnabled'));
				inGameConfigWrapper.SetVarValue('AMM', 'HeadEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadEnabled'));
				
				inGameConfigWrapper.SetVarValue('AMM', 'AutohideEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'AutohideEnabled'));
				
				inGameConfigWrapper.SetVarValue('AMM', 'StswEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StswEnabled'));
				inGameConfigWrapper.SetVarValue('AMM', 'SvswEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvswEnabled'));
				inGameConfigWrapper.SetVarValue('AMM', 'CrossbowEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CrossbowEnabled'));
				
				inGameConfigWrapper.SetVarValue('AMMHead', 'ToxEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'ToxEnabled'));
				
				inGameConfigWrapper.SetVarValue('AMMHead', 'HairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'HairEnabled'));
				inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'AltHairEnabled'));
				inGameConfigWrapper.SetVarValue('AMMHead', 'BeardRefreshEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'BeardRefreshEnabled'));
				inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearEnabled'));	
				inGameConfigWrapper.SetVarValue('AMMCape', 'CapeEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CapeEnabled'));
				
				inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsEnabled'));
				
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearEnabled'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearEnabled'));

				
				inGameConfigWrapper.SetVarValue('AMMSets', 'ChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ChestEnabled'));
				inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesEnabled'));
				inGameConfigWrapper.SetVarValue('AMMSets', 'LegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'LegsEnabled'));
				inGameConfigWrapper.SetVarValue('AMMSets', 'BootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BootsEnabled'));
				
				inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CChestEnabled'));
				inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesEnabled'));
				inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsEnabled'));
				inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsEnabled'));
				
				inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodyEnabled'));
								
				inGameConfigWrapper.SetVarValue('AMMHead', 'BanditMaskEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BanditMaskEnabled'));
				
				inGameConfigWrapper.SetVarValue('AMMSvSwords', 'HideSvscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideSvscab'));
				inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabEnabled'));
				inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordEnabled'));
				
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'HideStscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideStscab'));
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StscabEnabled'));
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordEnabled'));
				
				AMMisDisabled = false;
				
}


function DisableAMM(){
				
				SaveToggles();		
				
				//Disabling AMM
				inGameConfigWrapper.SetVarValue('AMM', 'BodyEnabled', true);
				inGameConfigWrapper.SetVarValue('AMM', 'HeadEnabled', true);
				
				inGameConfigWrapper.SetVarValue('AMM', 'AutohideEnabled', false);
				
				inGameConfigWrapper.SetVarValue('AMM', 'StswEnabled', true);
				inGameConfigWrapper.SetVarValue('AMM', 'SvswEnabled', true);
				inGameConfigWrapper.SetVarValue('AMM', 'CrossbowEnabled', true);
				
				inGameConfigWrapper.SetVarValue('AMMSvSwords', 'HideSvscab', false);
				inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordEnabled', false);
				
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'HideStscab', false);
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordEnabled', false);
				
				inGameConfigWrapper.SetVarValue('AMMHead', 'HairEnabled', true);
				inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMHead', 'BeardRefreshEnabled', true);
				inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearEnabled', false);	
				inGameConfigWrapper.SetVarValue('AMMCape', 'CapeEnabled', false);
				
				inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsEnabled', false);
				
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearEnabled', false);
								
				inGameConfigWrapper.SetVarValue('AMMSets', 'ChestEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMSets', 'LegsEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMSets', 'BootsEnabled', false);
				
				inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsEnabled', false);
				inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsEnabled', false);
				
				inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodyEnabled', false);
								
				inGameConfigWrapper.SetVarValue('AMMHead', 'BanditMaskEnabled', false);
				
				//Set AMM State
				AMMisDisabled = true;
				
}



//Array Inits
function HairArrayInit(){

hairArray.PushBack('Preview Hair');
hairArray.PushBack('Half With Tail Hairstyle');
hairArray.PushBack('Shaved With Tail Hairstyle');
hairArray.PushBack('Long Loose Hairstyle');
hairArray.PushBack('Short Loose Hairstyle');
hairArray.PushBack('Mohawk With Ponytail Hairstyle');
hairArray.PushBack('Nilfgaardian Hairstyle');

}

function AltHairArrayInit(){

altHairArray.PushBack("items\bodyparts\geralt_items\coif\c_01a_mg__witcher.w2ent");//Half With Tail Alt 1
altHairArray.PushBack("items\bodyparts\geralt_items\coif\c_01_mg__witcher_br.w2ent"); //Half With Tail Alt 2
altHairArray.PushBack("items\bodyparts\geralt_items\coif\c_01_mg__witcher_br02.w2ent");//Half With Tail Alt 3
altHairArray.PushBack("items\bodyparts\geralt_items\coif\c_01_mg__witcher_inq.w2ent");//Half With Tail Alt 4
altHairArray.PushBack("items\bodyparts\geralt_items\coif\c_03_mg__witcher.w2ent");//Long Loose Alt 1
altHairArray.PushBack("items\bodyparts\geralt_items\coif\c_03_mg__witcher_br.w2ent"); //Long Loose Alt 2
altHairArray.PushBack("items\bodyparts\geralt_items\coif\c_03_mg__witcher_inq.w2ent");//Long Loose Alt 3
altHairArray.PushBack("dlc\ammdlc\data\hairs\shaved_with_long_ponytail.w2ent");
altHairArray.PushBack("dlc\ammdlc\data\hairs\shaved_no_ponytail.w2ent");
altHairArray.PushBack("dlc\ammdlc\data\hairs\short_loose_with_ponytail.w2ent");
altHairArray.PushBack("dlc\ammdlc\data\hairs\half_loose_with_ponytail.w2ent");
altHairArray.PushBack("dlc\ammdlc\data\hairs\half_loose_with_ponytail_alt.w2ent");
altHairArray.PushBack("dlc\ammdlc\data\hairs\half_loose_no_ponytail.w2ent");
altHairArray.PushBack("dlc\ammdlc\data\hairs\half_loose_no_ponytail_alt.w2ent");
altHairArray.PushBack("dlc\ammdlc\data\hairs\mohawk_no_ponytail.w2ent");
//altHairArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\coif\c_08_mg__witcher.w2ent");
altHairArray.PushBack("dlc\ammdlc\data\hairs\hoshair.w2ent");
altHairArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\coif\c_08_mg__witcher_lx.w2ent");
altHairArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\coif\c_17_mg__witcher_bowl.w2ent");


}

function HeadGearArrayInit(){

headgearArray.PushBack("characters\models\crowd_npc\novigrad_cloaks\caps\c_01_ma__novigrad_citizen_cloak.w2ent"); //Default Hood
headgearArray.PushBack("characters\models\crowd_npc\novigrad_bandits\caps\c_01_ma__novigrad_bandit.w2ent"); //Soldier Helmet 1
headgearArray.PushBack("characters\models\crowd_npc\wizard\items\i_12_ma__wizard.w2ent"); //Turbant
headgearArray.PushBack("characters\models\crowd_npc\medic\caps\c_03_ma__medic.w2ent");//Hunter Hat
headgearArray.PushBack("characters\models\crowd_npc\temeria_guard\caps\c_01_ma__temeria_guard.w2ent");//Temeria Guard Helmet
//headgearArray.PushBack("characters\models\crowd_npc\nilfgaard_knight\caps\c_03_mb__nilfgaard_knight.w2ent");//Nilfgaardian Helmet 1
headgearArray.PushBack("dlc\ammdlc\data\nilfhelmet\nilfhelmet01.w2ent");//Nilfgaardian Helmet 1
//headgearArray.PushBack("characters\models\crowd_npc\nilfgaard_knight\caps\c_04_mb__nilfgaard_knight.w2ent");//Nilfgaardian Helmet 2
headgearArray.PushBack("dlc\ammdlc\data\nilfhelmet\nilfhelmet02.w2ent");//Nilfgaardian Helmet 2
headgearArray.PushBack("characters\models\main_npc\eredin\c_01_mw__eredin.w2ent");//Eredin Full Helmet
headgearArray.PushBack("dlc\ammdlc\data\imlerith\imlerith_helmet.w2ent"); //Imlerith Helmet
headgearArray.PushBack("characters\models\crowd_npc\novigrad_cloaks\caps\c_02_ma__novigrad_cloak.w2ent"); //Larger Hood
headgearArray.PushBack("characters\models\crowd_npc\medic\caps\c_01_ma__medic.w2ent"); //Vesemir Hat
headgearArray.PushBack("characters\models\main_npc\dandelion\c_01_ma__dandelion.w2ent"); //Dandelion Hat
headgearArray.PushBack("characters\models\main_npc\roche\c_01__roche.w2ent"); //Roche Hat
headgearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\caps\c_01_mw__wild_hunt.w2ent");
headgearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\caps\c_02_mw__wild_hunt.w2ent");
headgearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\caps\c_03_mw__wild_hunt.w2ent");
headgearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\caps\c_04_mw__wild_hunt.w2ent");
headgearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\caps\c_05_mw__wild_hunt.w2ent");
headgearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\caps\c_06_mw__wild_hunt.w2ent");
headgearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\caps\c_07_mw__wild_hunt.w2ent");
headgearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\caps\c_08_mw__wild_hunt.w2ent");
headgearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\caps\c_09_mw__wild_hunt.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\whhelmet\whhelmet_6.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\eredin\eredin_helmet.w2ent");
headgearArray.PushBack("characters\models\crowd_npc\skellige_warrior_lvl2\caps\c_01_ma__skellige_warrior_lvl2.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\sklghelmets\skellige_warrior_helmet3.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\sklghelmets\skellige_warrior_helmet4.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\sklghelmets\skellige_warrior_helmet5.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\sklghelmets\skellige_warrior_helmet6.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\sklghelmets\skellige_warrior_helmet7.w2ent");
headgearArray.PushBack("characters\models\crowd_npc\skellige_warrior_lvl2\caps\c_08_ma__skellige_warrior_lvl2.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\sklghelmets\skellige_warrior_helmet9.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\sklghelmets\skellige_warrior_helmet10.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\sklghelmets\skellige_warrior_helmet11.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\sklghelmets\skellige_warrior_helmet13.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\sklghelmets\skellige_warrior_helmet14.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\hood\hood.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_01_mb__bob_knights.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_02_mb__bob_knights.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_02_mb__mq7017_knight.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_03_mb__bob_knights.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_04_mb__bob_knights.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_05_mb__bob_knights.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_06_mb__bob_knights.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_07_mb__bob_knights.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_08_mb__bob_knights.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_09_mb__bob_knights.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\knighthelmets\c_10_mb__bob_knights.w2ent");
headgearArray.PushBack("dlc\ep1\data\characters\models\main_npc\ewald_borsody\ewald_borsody_hood_01.w2ent");
headgearArray.PushBack("dlc\ammdlc\data\hood\cat_t5_hood_px.w2ent");



}

function CapeArrayInit(){

capeArray.PushBack("characters\models\crowd_npc\skellige_villager\items\i_06_ma__skellige_villager_px.w2ent"); //Skellige
capeArray.PushBack("characters\models\crowd_npc\skellige_villager\items\i_06_mb__skellige_villager_px.w2ent");//Skellige Gray/Greenish
capeArray.PushBack("characters\models\main_npc\crach\body_02_mb__crach.w2ent"); // Crach
capeArray.PushBack("characters\models\crowd_npc\scoiatael_dwarf\items\i_02_da__scoiatael_dwarf.w2ent");
capeArray.PushBack("characters\models\crowd_npc\skellige_berserker\items\i_09_ms__skellige_berserker.w2ent");
capeArray.PushBack("characters\models\secondary_npc\francis_bedlam\i_01_ma__francis_bedlam_px.w2ent");
capeArray.PushBack("characters\models\main_npc\avallach\cloak_02_ma__avallach.w2ent");
capeArray.PushBack("characters\models\main_npc\avallach\cloak_03_ma__avallach.w2ent");
capeArray.PushBack("characters\models\main_npc\avallach\cloak_01_ma__avallach.w2ent");
capeArray.PushBack("characters\models\crowd_npc\novigrad_cloaks\torso\t2_01_ma__novigrad_cloak.w2ent");//Shady Individual

}

function FaceGearArrayInit(){

facegearArray.PushBack("characters\models\crowd_npc\novigrad_rowdy\items\i_04_ma__novigrad_rowdy.w2ent");//Medium Scarf
facegearArray.PushBack("characters\models\crowd_npc\novigrad_rowdy\items\i_04a_ma__novigrad_rowdy_pattern15.w2ent");//Long Scarf Grey Chess Pattern
facegearArray.PushBack("characters\models\crowd_npc\medic\items\i_04_ma__medic.w2ent"); // Doctor Mask 1
facegearArray.PushBack("characters\models\crowd_npc\medic\items\i_05_ma__medic.w2ent"); //Doctor Mask 2
facegearArray.PushBack("characters\models\crowd_npc\medic\items\i_06_ma__medic.w2ent"); // Doctor Mask 3
facegearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\caps\c_01_mw__wild_hunt.w2ent");//Wild Hunt Skull Helmet
facegearArray.PushBack("characters\models\main_npc\avallach\mask_01_ma__avallach.w2ent");//Avallach Mask

}

//############################################################################

function ShouldersArrayInit(){

shouldersArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\items\i_06_mw__wild_hunt.w2ent"); //WH Pauldrons Cloth Arms
shouldersArray.PushBack("characters\models\crowd_npc\skellige_villager\items\i_14_mb__skellige_villager.w2ent");// Skelllige Fur
shouldersArray.PushBack("characters\models\crowd_npc\scoiatael_dwarf\items\i_02_da__scoiatael_dwarf.w2ent"); // Pellars Fur
shouldersArray.PushBack("characters\models\crowd_npc\skellige_villager\items\i_17a_mb__skellige_villager.w2ent");
shouldersArray.PushBack("characters\models\crowd_npc\nilfgaard_knight\items\i_10_mb__nilfgaard_knight.w2ent");//Nilfgaardian Shoulders
shouldersArray.PushBack("characters\models\crowd_npc\skellige_villager_woman\items\i_05_wa__skellige_villager.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\furs\ciri_fur.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\furs\ciri_fur_bear.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\furs\ciri_fur_bear_brown.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\furs\ciri_fur_bear_lightbrown.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\furs\yen_fur.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\furs\yen_fur_bear.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\furs\yen_fur_bear_brown.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\furs\yen_fur_bear_lightbrown.w2ent");
//shouldersArray.PushBack("dlc\ammdlc\data\furs\caranthir_fur.w2ent");
//shouldersArray.PushBack("dlc\ammdlc\data\furs\caranthir_fur_brown.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\vipershoulders\vipershouldersonly.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\vipershoulders\vipershoulderscomplete.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\vipershoulders\vipershouldersbear.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\furs\skellige_fur.w2ent");
shouldersArray.PushBack("dlc\ammdlc\data\furs\skellige_fur_full.w2ent");


}

function ArmsArrayInit(){

armsArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\arms\a_01_mw__wild_hunt.w2ent");//WH Arms
armsArray.PushBack("characters\models\secondary_npc\voorhis\a_01_ma__voorhis.w2ent"); //Voorhis Arms
armsArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\arms\a_01_mb__bob_knights.w2ent");                  
armsArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\arms\a_01_mb__mq7017_knight.w2ent");

}



//This array is used by all 10 Acc sliders. Be sure to add to options to all 10 in the XML too
function AccessoriesArrayInit(){

accessoriesArray.PushBack("characters\models\crowd_npc\inquisitor_soldier_lvl2\items\i_03_mb__inquisition_soldier_lvl2.w2ent");//Bombs
accessoriesArray.PushBack("characters\models\crowd_npc\inquisitor_soldier_lvl2\items\i_02_mb__inquisition_soldier_lvl2.w2ent");//Scrolls
accessoriesArray.PushBack("characters\models\crowd_npc\novigrad_citizen\items\i_04_ma__novigrad_citizen.w2ent");//Belt Pouch
accessoriesArray.PushBack("characters\models\crowd_npc\novigrad_bandits\items\i_03_ma__novigrad_bandit.w2ent");//Bolts
accessoriesArray.PushBack("characters\models\crowd_npc\novigrad_citizen\items\i_03_ma__novigrad_citizen.w2ent");//Small Knife
accessoriesArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\items\i_01_mw__wild_hunt.w2ent");//WH Chest Plate 1
accessoriesArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\items\i_02_mw__wild_hunt.w2ent");//WH Chest Plate 2
accessoriesArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\items\i_04_mw__wild_hunt.w2ent");//WH 3 Chest Plate
accessoriesArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\items\i_03_mw__wild_hunt.w2ent");//WH Back Plate
accessoriesArray.PushBack("characters\models\crowd_npc\skellige_fisherman\items\i_06_ma__skellige_fisherman.w2ent");//Coin Pouch
accessoriesArray.PushBack("characters\models\crowd_npc\medic\items\i_01_ma__medic.w2ent");//Medic Bag
accessoriesArray.PushBack("characters\models\crowd_npc\novigrad_rowdy\items\i_02a_ma__novigrad_rowdy.w2ent");//Belt Stuff 1                                       
accessoriesArray.PushBack("characters\models\crowd_npc\novigrad_rowdy\items\i_02_mb__novigrad_rowdy.w2ent");//Belt Stuff 2                                           
accessoriesArray.PushBack("characters\models\crowd_npc\novigrad_rowdy\items\i_02_ms__novigrad_rowdy.w2ent");//Belt Stuff 3
accessoriesArray.PushBack("characters\models\crowd_npc\novigrad_citizen\items\i_02_ma__novigrad_merchant.w2ent");//Merchant Backpack
accessoriesArray.PushBack("dlc\ep1\data\items\quest_items\q603\q603_item__glasses.w2ent");//Glasses
accessoriesArray.PushBack("characters\models\crowd_npc\skellige_villager\items\i_11_mb__skellige_villager.w2ent");//Heavy Rings for all gloves
accessoriesArray.PushBack("characters\models\crowd_npc\skellige_villager\items\i_13_mb__skellige_villager.w2ent");//Light Ring for feline gloves
accessoriesArray.PushBack("characters\models\crowd_npc\nilfgaard_knight\caps\c_05_mb__nilfgaard_knight.w2ent");//Nilfgaardian Helm Wings
accessoriesArray.PushBack("characters\models\crowd_npc\skellige_fisherman\items\i_02_ma__skellige_fisherman.w2ent");//Rope
accessoriesArray.PushBack("characters\models\crowd_npc\skellige_berserker\items\i_05_ms__skellige_berserker.w2ent");//Biceps Ring
accessoriesArray.PushBack("characters\models\crowd_npc\skellige_berserker\items\i_04_ms__skellige_berserker.w2ent");//Biceps Leather
accessoriesArray.PushBack("characters\models\crowd_npc\wizard\items\i_09_ma__wizard.w2ent");//Scrolls Bag
accessoriesArray.PushBack("characters\models\crowd_npc\wizard\items\i_03_ma__wizard.w2ent");//Wizard Hip Armor
accessoriesArray.PushBack("characters\models\crowd_npc\nilfgaard_knight\items\i_09_mb__nilfgaard_knight.w2ent");//Shoulder Rope
accessoriesArray.PushBack("characters\models\secondary_npc\holger\d_01_mb__holger.w2ent");//Leather Skirt
accessoriesArray.PushBack("characters\models\crowd_npc\nml_villager\items\i_01_ma__the_pretender_medalion.w2ent");
accessoriesArray.PushBack("dlc\ammdlc\data\knife\originalknife.w2ent");//Original Knife DLC
accessoriesArray.PushBack("dlc\ammdlc\data\knife\theknife.w2ent");//Repositioned Knife DLC
accessoriesArray.PushBack("dlc\ammdlc\data\bearscarf\bearscarf.w2ent");// BearScarf! DLC
accessoriesArray.PushBack("dlc\ammdlc\data\cat_chest_belt\cat_chest_belt.w2ent"); //Cat Chest Belt DLC
accessoriesArray.PushBack("dlc\ammdlc\data\cat_chest_belt\cat_chest_belt_alt.w2ent");//Cat Chest Belt Alternative
accessoriesArray.PushBack("dlc\ammdlc\data\bearbelt\bearbelt.w2ent"); // Bear Belt DLC
accessoriesArray.PushBack("dlc\ammdlc\data\bearbelt\bearbelt_black.w2ent"); // Bear Belt DLC
accessoriesArray.PushBack("dlc\ammdlc\data\bearbelt\bearbelt_brown.w2ent"); // Bear Belt DLC
accessoriesArray.PushBack("dlc\ammdlc\data\bearbags\bearbag.w2ent"); // Bear Bag
accessoriesArray.PushBack("characters\models\crowd_npc\wizard\items\i_04_ma__wizard.w2ent");
accessoriesArray.PushBack("characters\models\crowd_npc\wizard\items\i_07_ma__wizard.w2ent");
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\nilfgaard_skirt_px.w2ent"); // Nilfgaard Skirt
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\flaming_rose_skirt_px.w2ent"); // Flaming Rose Skirt
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\skellige_skirt_px.w2ent"); // Skellige Skirt
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\oathbreaker_skirt_px.w2ent"); // Oathbreaker Skirt
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\voorhis_skirt_px.w2ent"); // Voorhis Skirt
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\casual_skellige_skirt_px.w2ent");
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\casual_skellige2_skirt_px.w2ent");
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\bearlvl1_skirt_px.w2ent");
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\bearlvl2_skirt_px.w2ent");
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\bearlvl3_skirt_px.w2ent");
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\bearlvl4_skirt_px.w2ent");
accessoriesArray.PushBack("dlc\ammdlc\data\skirts\bearlvl5_skirt_px.w2ent");

accessoriesArray.PushBack("dlc\ammdlc\data\w2belts\w2belt_dark.w2ent");
accessoriesArray.PushBack("dlc\ammdlc\data\bearbelt\concept_belt.w2ent"); //Not to be used with the bear armor
accessoriesArray.PushBack("dlc\ammdlc\data\bearbelt\concept_belt_nb.w2ent"); // No bags Concept Belt

//TOUSSAINT

accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_01_mb__bob_knights.w2ent"); //Shoulder
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_01_mb__mq7017_knight.w2ent");  //Shoulder             
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_02_mb__bob_knights.w2ent");  //Shoulder
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_03_mb__bob_knights.w2ent");  //Shoulder               
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_04_mb__bob_knights.w2ent");  //Elbow               
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_04_mb__mq7017_knight.w2ent"); //Elbow              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_05_mb__bob_knights.w2ent");  //Elbow               
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_06_mb__bob_knights.w2ent"); //Elbow
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_17_mb__bob_knights.w2ent"); //Elbow                
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_02_mb__mq7017_knight.w2ent");  //Hip                  
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_11_mb__bob_knights.w2ent"); //Hip              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_12_mb__bob_knights.w2ent"); //Hip              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_13_mb__bob_knights.w2ent"); //Hip              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_14_mb__bob_knights.w2ent"); //Knee              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_15_mb__bob_knights.w2ent"); //Knee             
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_16_mb__bob_knights.w2ent"); //Knee           
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_21_mb__bob_knights.w2ent"); //Belt              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_22_mb__bob_knights.w2ent"); //Belt              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_23_mb__bob_knights.w2ent"); //Belt              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_24_mb__bob_knights.w2ent"); //Belt              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_25_mb__bob_knights.w2ent"); //Belt              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_26_mb__bob_knights.w2ent"); //Belt              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_27_mb__bob_knights.w2ent"); //Belt              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_28_mb__bob_knights.w2ent"); //Belt              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_29_mb__bob_knights.w2ent"); //Belt              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_30_mb__bob_knights.w2ent"); //Belt                                       
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_37_mb__bob_knights.w2ent"); //Belt              
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_38_mb__bob_knights.w2ent"); //Belt
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_31_mb__bob_knights.w2ent"); //Necklace
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\items\i_33_mb__bob_knights.w2ent"); //Necklace
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\caps\c_01_mb__bob_knights_f4.w2ent");               
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\caps\c_01_mb__bob_knights_f5.w2ent");               
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\caps\c_01_mb__bob_knights_f6.w2ent");
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\caps\c_03_mb__bob_knights_f1.w2ent");               
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\caps\c_03_mb__bob_knights_f2.w2ent");               
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\caps\c_03_mb__bob_knights_f3.w2ent");               
accessoriesArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\caps\c_03_mb__bob_knights_f4.w2ent");  

accessoriesArray.PushBack("dlc\ammdlc\data\hood\mirrorman_hooddown.w2ent");
accessoriesArray.PushBack("dlc\ammdlc\data\hood\hooddown.w2ent");

}

function FullBodyGearArrayInit(){


fullbodyGearArray.PushBack("characters\models\main_npc\wildhunt_imlerith\body_01_mw__imlerith.w2ent");//Imlerith
fullbodyGearArray.PushBack("characters\models\main_npc\wildhunt_caranthir\body_01_mw__caranthir.w2ent");//Caranthir
fullbodyGearArray.PushBack("characters\models\main_npc\eredin\body_01_mw__eredin.w2ent");//Eredin
fullbodyGearArray.PushBack("characters\models\main_npc\avallach\body_01_ma__avallach.w2ent");//Avalach
fullbodyGearArray.PushBack("characters\models\main_npc\baron\b_01_ms__nml_baron.w2ent");//Baron
fullbodyGearArray.PushBack("characters\models\main_npc\dijkstra\body_01_mb__dijkstra.w2ent");//Djikstra
fullbodyGearArray.PushBack("characters\models\main_npc\radovid\body_01__radovid.w2ent");//Radovid
fullbodyGearArray.PushBack("characters\models\main_npc\roche\body_01__roche.w2ent");//Roche
fullbodyGearArray.PushBack("characters\models\main_npc\vesemir\body_01__vesemir.w2ent");//Vesemir
fullbodyGearArray.PushBack("characters\models\main_npc\emhyr\body_01_ma__emhyr.w2ent");//Emhyr
fullbodyGearArray.PushBack("characters\models\secondary_npc\eskel\body_01_ma__eskel.w2ent");//Eskel
fullbodyGearArray.PushBack("characters\models\main_npc\letho\body_01__letho.w2ent");//Letho
fullbodyGearArray.PushBack("characters\models\main_npc\geels\body_01_ma__geels.w2ent");//Ge'els
fullbodyGearArray.PushBack("characters\models\secondary_npc\voorhis\body_01_ma__voorhis.w2ent");//Morvran Voorhis
fullbodyGearArray.PushBack("dlc\ep1\data\characters\models\main_npc\olgierd\olgierd.w2ent"); //Olgierd
fullbodyGearArray.PushBack("characters\models\secondary_npc\lambert\body_01_ma__lambert.w2ent");//Lambert
fullbodyGearArray.PushBack("dlc\bob\data\characters\models\main_npc\regis\body_01_ma__regis.w2ent");//Regis
fullbodyGearArray.PushBack("dlc\bob\data\characters\models\main_npc\dettlaff\body_01_ma__dettlaff.w2ent");//Dettlaff

}

//############################WITCHER SETS################################################

function ChestGearArrayInit(){



chestGearArray.PushBack("characters\models\geralt\armor\armor_bear\t_01a_mg__bear_lvl1_meshes.w2ent");
//chestGearArray.PushBack("characters\models\geralt\armor\armor_bear\t_01_mg__bear_lvl1_meshes.w2ent");
chestGearArray.PushBack("characters\models\geralt\armor\armor_bear\t_01a_mg__bear_lvl2_meshes.w2ent");
//chestGearArray.PushBack("characters\models\geralt\armor\armor_bear\t_01_mg__bear_lvl2_meshes.w2ent");
chestGearArray.PushBack("characters\models\geralt\armor\armor_bear\t_01a_mg__bear_lvl3_meshes.w2ent");
//chestGearArray.PushBack("characters\models\geralt\armor\armor_bear\t_01_mg__bear_lvl3_meshes.w2ent");
chestGearArray.PushBack("characters\models\geralt\armor\armor_bear\t_01a_mg__bear_lvl4_meshes.w2ent");
//chestGearArray.PushBack("characters\models\geralt\armor\armor_bear\t_01_mg__bear_lvl4_meshes.w2ent");
chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__bear\t_05a_mg__bear_lvl5_meshes.w2ent");
//chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__bear\t_05_mg__bear_lvl5_meshes.w2ent");


chestGearArray.PushBack("items\bodyparts\geralt_items\trunk\witcher_gryphon\t_01a_mg__gryphon_lvl1_meshes.w2ent");
chestGearArray.PushBack("items\bodyparts\geralt_items\trunk\witcher_gryphon\t_01a_mg__gryphon_lvl2_meshes.w2ent");
chestGearArray.PushBack("items\bodyparts\geralt_items\trunk\witcher_gryphon\t_01a_mg__gryphon_lvl3_meshes.w2ent");
chestGearArray.PushBack("items\bodyparts\geralt_items\trunk\witcher_gryphon\t_01a_mg__gryphon_lvl4_meshes.w2ent");
//chestGearArray.PushBack("items\bodyparts\geralt_items\trunk\witcher_gryphon\t_01_mg__gryphon_lvl1_meshes.w2ent");
//chestGearArray.PushBack("items\bodyparts\geralt_items\trunk\witcher_gryphon\t_01_mg__gryphon_lvl2_meshes.w2ent");
//chestGearArray.PushBack("items\bodyparts\geralt_items\trunk\witcher_gryphon\t_01_mg__gryphon_lvl3_meshes.w2ent");
//chestGearArray.PushBack("items\bodyparts\geralt_items\trunk\witcher_gryphon\t_01_mg__gryphon_lvl4_meshes.w2ent");
chestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\witcher_gryphon\t_01a_mg__gryphon_lvl5_meshes.w2ent");
//chestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\witcher_gryphon\t_01_mg__gryphon_lvl5_meshes.w2ent");

chestGearArray.PushBack("characters\models\geralt\armor\armor__cat\t_01_mg__lynx_lvl1_meshes.w2ent");
//chestGearArray.PushBack("characters\models\geralt\armor\armor__cat\t_01_mg__lynx_lvl2.w2ent");
chestGearArray.PushBack("characters\models\geralt\armor\armor__cat\t_01a_mg__lynx_lvl2_meshes.w2ent");
//chestGearArray.PushBack("characters\models\geralt\armor\armor__cat\t_01_mg__lynx_lvl3.w2ent");
chestGearArray.PushBack("characters\models\geralt\armor\armor__cat\t_01a_mg__lynx_lvl3_meshes.w2ent");
//chestGearArray.PushBack("characters\models\geralt\armor\armor__cat\t_01_mg__lynx_lvl4.w2ent");
chestGearArray.PushBack("characters\models\geralt\armor\armor__cat\t_01a_mg__lynx_lvl4_meshes.w2ent");
chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__cat\t_01a_mg__lynx_lvl5_meshes.w2ent");
//chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__cat\t_01_mg__lynx_lvl5_meshes.w2ent");
chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__cat\t_02a_mg__lynx_lvl5_meshes.w2ent");
//chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__cat\t_02_mg__lynx_lvl5_meshes.w2ent");

chestGearArray.PushBack("characters\models\geralt\armor\armor__viper\t_01a_mg__viper_lvl3_meshes.w2ent");
//chestGearArray.PushBack("characters\models\geralt\armor\armor__viper\t_01_mg__viper_lvl3_meshes.w2ent");

//chestGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\t_01_mg__wolf_lvl1_meshes.w2ent");
chestGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\t_01a_mg__wolf_lvl1_meshes.w2ent");
//chestGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\t_01_mg__wolf_meshes.w2ent");
chestGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\t_01a_mg__wolf_lvl2_meshes.w2ent");
chestGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\t_01a_mg__wolf_lvl3_meshes.w2ent");
//chestGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\t_01_mg__wolf_lvl3_meshes.w2ent");
chestGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\t_01a_mg__wolf_lvl4_meshes.w2ent");
//chestGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\t_01_mg__wolf_lvl4_meshes.w2ent");
chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__wolf\t_01_mga__wolf_lvl5_meshes.w2ent");
//chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__wolf\t_01_mg__wolf_lvl5_meshes.w2ent");

chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\t_01a_mg__red_wolf_lvl1_meshes.w2ent");
//chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\t_01a_mg__red_wolf_lvl2_meshes.w2ent");
chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\t_01a_mg__red_wolf_lvl2_meshes.w2ent");
//chestGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\t_01_mg__red_wolf_lvl2_meshes.w2ent");

//chestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\witcher_flaming_rose\t_01_mg__flaming_rose_lv1.w2ent");
chestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\witcher_flaming_rose\t_01a_mg__flaming_rose_lv1.w2ent");

//chestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\witcher_ofir\t_01_mg__ofir_lv1.w2ent");
chestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\witcher_ofir\t_01a_mg__ofir_lv1.w2ent");

chestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\witcher_thief\t_01a_mg__thief.w2ent");
//chestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\witcher_thief\t_01a_mg__thief_no_medallion.w2ent");
//chestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\witcher_thief\t_01_mg__thief.w2ent");
//chestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\witcher_thief\t_01_mg__thief_no_medallion.w2ent");

chestGearArray.PushBack("dlc\ep1\data\characters\models\geralt\armor\armor_viper_v2\t_01a_mg__viper_v2_meshes.w2ent");
//chestGearArray.PushBack("dlc\ep1\data\characters\models\geralt\armor\armor_viper_v2\t_01_mg__viper_v2_meshes.w2ent");

//OTHER SETS
chestGearArray.PushBack("dlc\dlc1\data\player\armor\armor__temerian\t_01a_mg__temerian.w2ent");
//chestGearArray.PushBack("dlc\dlc1\data\player\armor\armor__temerian\t_01_mg__temerian.w2ent");

chestGearArray.PushBack("dlc\dlc14\data\items\bodyparts\geralt_items\trunk\witcher_skellige\t_01a_mg__skellige.w2ent");
//chestGearArray.PushBack("dlc\dlc14\data\items\bodyparts\geralt_items\trunk\witcher_skellige\t_01_mg__skellige.w2ent");

chestGearArray.PushBack("dlc\dlc5\data\items\bodyparts\geralt_items\trunk\witcher_nilfgaardian\t_01a_mg__nilfgaardian.w2ent");
//chestGearArray.PushBack("dlc\dlc5\data\items\bodyparts\geralt_items\trunk\witcher_nilfgaardian\t_01_mg__nilfgaardian.w2ent");

chestGearArray.PushBack("dlc\ammdlc\data\witcher_bear\noskirt_a_bear_lvl1.w2ent");
//chestGearArray.PushBack("dlc\ammdlc\data\witcher_bear\noskirt_bear_lvl1.w2ent");
chestGearArray.PushBack("dlc\ammdlc\data\witcher_bear\noskirt_a_bear_lvl2.w2ent");
//chestGearArray.PushBack("dlc\ammdlc\data\witcher_bear\noskirt_bear_lvl2.w2ent");
chestGearArray.PushBack("dlc\ammdlc\data\witcher_bear\noskirt_a_bear_lvl3.w2ent");
//chestGearArray.PushBack("dlc\ammdlc\data\witcher_bear\noskirt_bear_lvl3.w2ent");
chestGearArray.PushBack("dlc\ammdlc\data\witcher_bear\noskirt_a_bear_lvl4.w2ent");
//chestGearArray.PushBack("dlc\ammdlc\data\witcher_bear\noskirt_bear_lvl4.w2ent");
chestGearArray.PushBack("dlc\ammdlc\data\witcher_bear\noskirt_a_bear_lvl5.w2ent");

//chestGearArray.PushBack("dlc\ammdlc\data\witcher_cat\cat_t5_nohood.w2ent");

}

function GlovesGearArrayInit(){

//glovesGearArray.PushBack("characters\models\geralt\armor\armor_bear\g_01a_mg__bear_lvl1_meshes.w2ent");
//glovesGearArray.PushBack("characters\models\geralt\armor\armor_bear\g_01a_mg__bear_lvl2_meshes.w2ent");
glovesGearArray.PushBack("characters\models\geralt\armor\armor_bear\g_01_mg__bear_lvl1_meshes.w2ent");
glovesGearArray.PushBack("characters\models\geralt\armor\armor_bear\g_01_mg__bear_lvl2_meshes.w2ent");
glovesGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__bear\g_01_mg__bear_lvl3_meshes.w2ent");
//glovesGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__bear\g_01a_mg__bear_lvl3_meshes.w2ent");


//glovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\witcher_gryphon\g_01a_mg__gryphon_lvl1_meshes.w2ent");
//glovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\witcher_gryphon\g_01a_mg__gryphon_lvl2_meshes.w2ent");
glovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\witcher_gryphon\g_01_mg__gryphon_lvl1_meshes.w2ent");
glovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\witcher_gryphon\g_01_mg__gryphon_lvl2_meshes.w2ent");
//glovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\witcher_gryphon\g_01a_mg__gryphon_lvl3_meshes.w2ent"); 
glovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\witcher_gryphon\g_01_mg__gryphon_lvl3_meshes.w2ent");

//glovesGearArray.PushBack("characters\models\geralt\armor\armor__cat\g_01a_mg__lynx_lvl1_meshes.w2ent");
//glovesGearArray.PushBack("characters\models\geralt\armor\armor__cat\g_01a_mg__lynx_lvl2_meshes.w2ent");
glovesGearArray.PushBack("characters\models\geralt\armor\armor__cat\g_01_mg__lynx_lvl1_meshes.w2ent");
glovesGearArray.PushBack("characters\models\geralt\armor\armor__cat\g_01_mg__lynx_lvl2_meshes.w2ent");
//glovesGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__cat\g_01a_mg__lynx_lvl5_meshes.w2ent");             
glovesGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__cat\g_01_mg__lynx_lvl5_meshes.w2ent");

//glovesGearArray.PushBack("characters\models\geralt\armor\armor__viper\g_01a_mg__viper_lvl3.w2ent_meshes");
glovesGearArray.PushBack("characters\models\geralt\armor\armor__viper\g_01_mg__viper_lvl3_meshes.w2ent");

glovesGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\g_01_mg__wolf_lvl1_meshes.w2ent");
//glovesGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\g_01a_mg__wolf_meshes.w2ent");
glovesGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\g_01_mg__wolf_lvl2_meshes.w2ent");
//glovesGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\g_02a_mg__wolf_meshes.w2ent");
glovesGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__wolf\g_01_mg__wolf_lvl5_meshes.w2ent"); 

glovesGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\g_01_mg__red_wolf_lvl1_meshes.w2ent");       
glovesGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\g_01_mg__red_wolf_lvl2_meshes.w2ent"); 

//glovesGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\gloves\witcher_flaming_rose\g_01a_mg__flamingrose.w2ent");
glovesGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\gloves\witcher_flaming_rose\g_01_mg__flamingrose.w2ent");

//glovesGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\gloves\witcher_ofir\g_01a_mg__ofir_lv1.w2ent");
//glovesGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\gloves\witcher_ofir\g_01b_mg__ofir_lv1.w2ent");
glovesGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\gloves\witcher_ofir\g_01_mg__ofir_lv1.w2ent");

//glovesGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\gloves\witcher_thief\g_01a_mg__thief.w2ent");
glovesGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\gloves\witcher_thief\g_01_mg__thief.w2ent");

//glovesGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\gloves\witcher_viper_v2\g_01a_mg__viper_v2.w2ent");
glovesGearArray.PushBack("dlc\ep1\data\characters\models\geralt\armor\armor_viper_v2\g_01_mg__viper_v2_meshes.w2ent");

//OTHER
//glovesGearArray.PushBack("dlc\dlc1\data\player\armor\armor__temerian\g_01a_mg__temerian.w2ent");
glovesGearArray.PushBack("dlc\dlc1\data\player\armor\armor__temerian\g_01_mg__temerian.w2ent");

//glovesGearArray.PushBack("dlc\dlc14\data\items\bodyparts\geralt_items\gloves\witcher_skellige\g_01a_mg__skellige.w2ent");
glovesGearArray.PushBack("dlc\dlc14\data\items\bodyparts\geralt_items\gloves\witcher_skellige\g_01_mg__skellige.w2ent");

glovesGearArray.PushBack("dlc\dlc5\data\items\bodyparts\geralt_items\gloves\witcher_nilfgaardian\g_01_mg__nilfgaardian.w2ent");

}

function legsGearArrayInit(){


legsGearArray.PushBack("characters\models\geralt\armor\armor_bear\l_01a_mg__bear_lvl1_meshes.w2ent");
legsGearArray.PushBack("characters\models\geralt\armor\armor_bear\l_01a_mg__bear_lvl1_meshes.w2ent");
//legsGearArray.PushBack("characters\models\geralt\armor\armor_bear\l_01_mg__bear_lvl1_meshes.w2ent");
legsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__bear\l_01a_mg__bear_lvl3_meshes.w2ent");             
//legsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__bear\l_01_mg__bear_lvl3_meshes.w2ent");

legsGearArray.PushBack("items\bodyparts\geralt_items\legs\witcher_gryphon\l_01a_mg__gryphon_lvl1_meshes.w2ent");
legsGearArray.PushBack("items\bodyparts\geralt_items\legs\witcher_gryphon\l_01a_mg__gryphon_lvl2_meshes.w2ent");
//legsGearArray.PushBack("items\bodyparts\geralt_items\legs\witcher_gryphon\l_01_mg__gryphon_lvl1_meshes.w2ent");
//legsGearArray.PushBack("items\bodyparts\geralt_items\legs\witcher_gryphon\l_01_mg__gryphon_lvl2_meshes.w2ent");
legsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\witcher_gryphon\l_01a_mg__gryphon_lvl3_meshes.w2ent");   
//legsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\witcher_gryphon\l_01_mg__gryphon_lvl3_meshes.w2ent");    

legsGearArray.PushBack("characters\models\geralt\armor\armor__cat\l_01a_mg__lynx_lvl1_meshes.w2ent");
legsGearArray.PushBack("characters\models\geralt\armor\armor__cat\l_01a_mg__lynx_lvl2_meshes.w2ent");
//legsGearArray.PushBack("characters\models\geralt\armor\armor__cat\l_01_mg__lynx_lvl1_meshes.w2ent");
//legsGearArray.PushBack("characters\models\geralt\armor\armor__cat\l_01_mg__lynx_lvl2_meshes.w2ent");
legsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__cat\l_01a_mg__lynx_lvl3_meshes.w2ent");              
//legsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__cat\l_01_mg__lynx_lvl3_meshes.w2ent"); 

legsGearArray.PushBack("characters\models\geralt\armor\armor__viper\l_01a_mg__viper_lvl3_meshes.w2ent");
//legsGearArray.PushBack("characters\models\geralt\armor\armor__viper\l_01a_mg__viper_lvl3_shirt_meshes.w2ent");
//legsGearArray.PushBack("characters\models\geralt\armor\armor__viper\l_01_mg__viper_lvl3_meshes.w2ent");

//legsGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\l_01_mg__wolf_lvl1_meshes.w2ent");
legsGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\l_01a_mg__wolf_lvl1_meshes.w2ent");
//legsGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\l_01_mg__wolf_lvl2_meshes.w2ent");
legsGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\l_01a_mg__wolf_lvl2_meshes.w2ent");
legsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__wolf\l_01a_mg__wolf_lvl5_meshes.w2ent");             
//legsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__wolf\l_01_mg__wolf_lvl5_meshes.w2ent"); 

legsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\l_01a_mg__red_wolf_lvl1_meshes.w2ent");     
legsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\l_01a_mg__red_wolf_lvl2_meshes.w2ent");     
//legsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\l_01_mg__red_wolf_lvl1_meshes.w2ent");      
//legsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\l_01_mg__red_wolf_lvl2_meshes.w2ent");

legsGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\legs\witcher_ofir\l_01a_mg__ofir_lv1.w2ent");
//legsGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\legs\witcher_ofir\l_01_mg__ofir_lv1.w2ent");

legsGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\legs\witcher_thief\l_01a_mg__thief.w2ent");
//legsGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\legs\witcher_thief\l_01_mg__thief.w2ent");

legsGearArray.PushBack("dlc\ep1\data\characters\models\geralt\armor\armor_viper_v2\l_01a_mg__viper_v2_meshes.w2ent");
//legsGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\legs\witcher_viper_v2\l_01a_mg__viper_v2_shirt.w2ent");
//legsGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\legs\witcher_viper_v2\l_01_mg__viper_v2.w2ent");

legsGearArray.PushBack("dlc\dlc1\data\player\armor\armor__temerian\l_01a_mg__temerian.w2ent");
//legsGearArray.PushBack("dlc\dlc1\data\player\armor\armor__temerian\l_01_mg__temerian.w2ent");

legsGearArray.PushBack("dlc\dlc14\data\items\bodyparts\geralt_items\legs\witcher_skellige\l_01a_mg__skellige.w2ent");
//legsGearArray.PushBack("dlc\dlc14\data\items\bodyparts\geralt_items\legs\witcher_skellige\l_01_mg__skellige.w2ent");

legsGearArray.PushBack("dlc\dlc5\data\items\bodyparts\geralt_items\legs\witcher_nilfgaardian\l_01a_mg__nilfgaardian.w2ent");
//legsGearArray.PushBack("dlc\dlc5\data\items\bodyparts\geralt_items\legs\witcher_nilfgaardian\l_01_mg__nilfgaardian.w2ent");


}

function BootsGearArrayInit(){

//bootsGearArray.PushBack("");
bootsGearArray.PushBack("characters\models\geralt\armor\armor_bear\s_01_mg__bear_lvl1_meshes.w2ent");
bootsGearArray.PushBack("characters\models\geralt\armor\armor_bear\s_01_mg__bear_lvl2_meshes.w2ent");
bootsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__bear\s_01_mg__bear_lvl3_meshes.w2ent");

bootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\witcher_gryphon\s_01_mg__gryphon_lvl1_meshes.w2ent");
bootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\witcher_gryphon\s_01_mg__gryphon_lvl2_meshes.w2ent");  
bootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\witcher_gryphon\s_01_mg__gryphon_lvl3_meshes.w2ent");

bootsGearArray.PushBack("characters\models\geralt\armor\armor__cat\s_01_mg__lynx_lvl1_meshes.w2ent");
bootsGearArray.PushBack("characters\models\geralt\armor\armor__cat\s_01_mg__lynx_lvl2_meshes.w2ent");
bootsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__cat\s_01_mg__lynx_lvl5_meshes.w2ent");

bootsGearArray.PushBack("characters\models\geralt\armor\armor__viper\s_01_mg__viper_lvl3_meshes.w2ent");

bootsGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\s_01_mg__wolf_lvl1_meshes.w2ent");
bootsGearArray.PushBack("dlc\dlc10\data\player\armor\armor__wolf\model\s_01_mg__wolf_lvl2_meshes.w2ent");
bootsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__wolf\s_01_mg__wolf_lvl5_meshes.w2ent");

bootsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\s_01_mg__red_wolf_lvl1_meshes.w2ent");      
bootsGearArray.PushBack("dlc\bob\data\characters\models\geralt\armor\armor__red_wolf\s_01_mg__red_wolf_lvl2_meshes.w2ent");

bootsGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\shoes\witcher_ofir\s_01_mg__ofir_lv1.w2ent");//Ofir

bootsGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\shoes\witcher_thief\s_01_mg__thief.w2ent");//Thief

bootsGearArray.PushBack("dlc\ep1\data\characters\models\geralt\armor\armor_viper_v2\s_01_mg__viper_v2_meshes.w2ent");//Viper v2

bootsGearArray.PushBack("dlc\dlc1\data\player\armor\armor__temerian\s_01_mg__temerian.w2ent");

bootsGearArray.PushBack("dlc\dlc14\data\items\bodyparts\geralt_items\shoes\witcher_skellige\s_01_mg__skellige.w2ent");

bootsGearArray.PushBack("dlc\dlc5\data\items\bodyparts\geralt_items\shoes\witcher_nilfgaardian\s_01_mg__nilfgaardian.w2ent");



}


//############################COMMON SETS################################################

function CChestGearArrayInit(){

CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\bare\t_01_mg__body.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\bare\t_01_mg__body_wet.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\bare\t_01_mg__body_wet_hires.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\bare\t_01_mg__body_medalion.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\bare\t_01_mg__body_belt.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\bare\t_01_mg__body_towel.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\witcher_shirt\t_01_mg__shirt.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\witcher_shirt\t_01_mg__shirt_no_knife.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\casual_non_combat\ta_01a_mg__casual_nilfgaardian_suit.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\casual_non_combat\ta_01a_mg__casual_skellige_suit.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\casual_non_combat\ta_01_mg__casual_nilfgaardian_suit.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\casual_non_combat\ta_01_mg__casual_skellige_suit.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\casual_non_combat\ta_02a_mg__casual_nilfgaardian_suit.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\casual_non_combat\ta_02_mg__casual_skellige_suit.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\casual_non_combat\ta_02a_mg__casual_skellige_suit.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\casual_non_combat\ta_02_mg__casual_nilfgaardian_suit.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\casual_non_combat\ta_03a_mg__casual_nilfgaardian_suit.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\casual_non_combat\ta_03_mg__casual_nilfgaardian_suit.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_01a_mg__common_heavy_lvl1.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_01a_mg__common_heavy_lvl2.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_01a_mg__common_heavy_lvl3.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_01a_mg__common_heavy_lvl4.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_01_mg__common_heavy_lvl1.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_01_mg__common_heavy_lvl2.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_01_mg__common_heavy_lvl3.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_01_mg__common_heavy_lvl4.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_02a_mg__common_heavy_lvl1.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_02a_mg__common_heavy_lvl2.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_02a_mg__common_heavy_lvl3.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_02_mg__common_heavy_lvl1.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_02_mg__common_heavy_lvl2.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_02_mg__common_heavy_lvl3.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_03a_mg__common_heavy_lvl3.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_heavy\t_03_mg__common_heavy_lvl3.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_01a_mg__common_light_lvl1.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_01a_mg__common_light_lvl2_meshes.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_01a_mg__common_light_lvl3.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_01a_mg__common_light_lvl4.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_01_mg__common_light_lvl1.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_01_mg__common_light_lvl2_meshes.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_01_mg__common_light_lvl3.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_01_mg__common_light_lvl4.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_02a_mg__common_light_lvl1.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_02a_mg__common_light_lvl2.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_02a_mg__common_light_lvl3.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_02a_mg__common_light_lvl4.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_02_mg__common_light_lvl1.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_02_mg__common_light_lvl2.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_02_mg__common_light_lvl3.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_02_mg__common_light_lvl4.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_03a_mg__common_light_lvl2.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_light\t_03_mg__common_light_lvl2.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_01a_mg__common_medium_lvl1.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_01a_mg__common_medium_lvl2.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_01a_mg__common_medium_lvl3.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_01a_mg__common_medium_lvl4.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_01_mg__common_medium_lvl1.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_01_mg__common_medium_lvl2.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_01_mg__common_medium_lvl3.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_01_mg__common_medium_lvl4.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_02a_mg__common_medium_lvl1.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_02a_mg__common_medium_lvl2.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_02a_mg__common_medium_lvl3.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_02a_mg__common_medium_lvl4.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_02_mg__common_medium_lvl1.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_02_mg__common_medium_lvl2.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_02_mg__common_medium_lvl3.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_02_mg__common_medium_lvl4.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_03a_mg__common_medium_lvl4.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_03_mg__common_medium_lvl4.w2ent");
CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_04a_mg__common_medium_lvl4.w2ent");
//CchestGearArray.PushBack("items\bodyparts\geralt_items\trunk\common_medium\t_04_mg__common_medium_lvl4.w2ent");
CchestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\common_light\t1_05a_mg__common_light_lv1.w2ent");
//CchestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\common_light\t1_05_mg__common_light_lv1.w2ent");
CchestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\common_light\t_01_mg__wedding_suit.w2ent");
CchestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\common_light\t_01a_mg__wedding_suit.w2ent");
CchestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\common_light\t_01b_mg__wedding_suit.w2ent");
CchestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\common_light\t_02_mg__wedding_suit.w2ent");
CchestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\common_light\t_02a_mg__wedding_suit.w2ent");
CchestGearArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\trunk\common_light\t_02b_mg__wedding_suit.w2ent");
CchestGearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\torso\t1_01_mw__wild_hunt.w2ent");

//////////////////BOB DLC/////////////

CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\armor_vampire\t_01a_mg__vampire.w2ent");                
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\armor_vampire\t_01_mg__vampire.w2ent");
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\armor_vampire\q704_t_01a_mg__vampire.w2ent");           
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\armor_vampire\q_704_t_01_mg__vampire.w2ent");           

//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\errant_knight\t_01_mg__errant_knight.w2ent");           
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\errant_knight\t_01_mg__errant_knight_tourney.w2ent");
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\errant_knight\t_01a_mg__errant_knight.w2ent");          
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\errant_knight\t_01a_mg__errant_knight_tourney.w2ent");  
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\errant_knight\t_02_mg__errant_knight.w2ent");           
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\errant_knight\t_02_mg__errant_knight_tourney.w2ent");   
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\errant_knight\t_02a_mg__errant_knight.w2ent");          
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\errant_knight\t_02a_mg__errant_knight_tourney.w2ent");  
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\errant_knight\t_03_mg__errant_knight.w2ent");   
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\errant_knight\t_03a_mg__errant_knight.w2ent");          

//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\guard\t_01_mg__guard.w2ent");
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\guard\t_01a_mg__guard.w2ent");
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\guard\t_02_mg__guard.w2ent");                                                     
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\guard\t_02a_mg__guard.w2ent");                          

//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\prison_outfit\t_01_mg__prison_outfit.w2ent");                          
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\prison_outfit\t_01a_mg__prison_outfit.w2ent");          

//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\armor_damien\t_01_mg__damien.w2ent");
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\armor_damien\t_01a_mg__damien.w2ent");                  
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\armor_damien\t_02_mg__damien.w2ent");                   
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\armor_damien\t_02a_mg__damien.w2ent");                  


//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\casual_beauclair_outfit\t2_10a_mg_medal__bob.w2ent");   
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\casual_beauclair_outfit\t2_10a_mg__bob.w2ent");         
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\casual_beauclair_outfit\t2_10_mg_medal__bob.w2ent");    
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\casual_beauclair_outfit\t2_10_mg__bob.w2ent");          
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\casual_beauclair_outfit\t2_11a_mg__bob.w2ent");         
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\casual_beauclair_outfit\t2_11_mg__bob.w2ent");          
CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\casual_beauclair_outfit\t_02a_mg__bob.w2ent");          
//CchestGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\trunk\casual_beauclair_outfit\t_02_mg__bob.w2ent"); 

CchestGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\torso\t2_01_mb__bob_knights.w2ent");                
CchestGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\torso\t2_01_mb__dun_tynne.w2ent");                  
CchestGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\torso\t2_01_mb__flaming_rose_guard_ep2.w2ent");     
CchestGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\torso\t2_01_mb__mq7017_knight.w2ent");              
CchestGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\torso\t2_02_mb__bob_knights.w2ent");                
CchestGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\torso\t2_03_mb__bob_knights.w2ent");                
CchestGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\torso\t2_04_mb__bob_knights.w2ent");                
CchestGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\torso\t2_05_mb__bob_knights.w2ent");                
CchestGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\torso\t2_06_mb__bob_knights.w2ent");                
CchestGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\torso\t2_07_mb__bob_knights.w2ent");

//CchestGearArray.PushBack("dlc\dlcghcarmors\data\armors\baron_armor\t_01a_baron.w2ent");

}

function CGlovesGearArrayInit(){

CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\bare\g_01_mg__body.w2ent");
CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\bare\g_01_mg__body_wet.w2ent");
//CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_heavy\g_01a_mg__common_heavy_lvl1.w2ent");
//CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_heavy\g_01a_mg__common_heavy_lvl2.w2ent");
//CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_heavy\g_01a_mg__common_heavy_lvl3.w2ent");
//CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_heavy\g_01a_mg__common_heavy_lvl4.w2ent");
CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_heavy\g_01_mg__common_heavy_lvl1.w2ent");
CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_heavy\g_01_mg__common_heavy_lvl2.w2ent");
CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_heavy\g_01_mg__common_heavy_lvl3.w2ent");
CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_heavy\g_01_mg__common_heavy_lvl4.w2ent");
//CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_light\g_01a_mg__common_light_lvl1.w2ent");
//CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_light\g_01a_mg__common_light_lvl2.w2ent");
//CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_light\g_01a_mg__common_light_lvl3.w2ent");
//CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_light\g_01a_mg__common_light_lvl4.w2ent");
CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_light\g_01_mg__common_light_lvl1.w2ent");
CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_light\g_01_mg__common_light_lvl2.w2ent");
CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_light\g_01_mg__common_light_lvl3.w2ent");
CglovesGearArray.PushBack("items\bodyparts\geralt_items\gloves\common_light\g_01_mg__common_light_lvl4.w2ent");
CglovesGearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\gloves\g_01_mw__wild_hunt.w2ent");
CglovesGearArray.PushBack("dlc\bob\data\characters\models\main_npc\regis\g_01_ma__regis.w2ent");
CglovesGearArray.PushBack("dlc\bob\data\characters\models\main_npc\dettlaff\g_01_ma__dettlaff.w2ent");

//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\armor_vampire\g_01a_mg__vampire.w2ent");               
//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\armor_vampire\g_01b_mg__vampire.w2ent");               
CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\armor_vampire\g_01_mg__vampire.w2ent");                
//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\armor_vampire\q704_g_01a_mg__vampire.w2ent");          
CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\armor_vampire\q704_g_01b_mg__vampire.w2ent");          
//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\armor_vampire\q704_g_01_mg__vampire.w2ent");

//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\g_01a_mg__errant_knight.w2ent");                       
//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\g_01b_mg__errant_knight.w2ent");                       
CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\g_01_mg__errant_knight.w2ent");           
//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\errant_knight\g_02a_mg__errant_knight.w2ent");         
//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\errant_knight\g_02b_mg__errant_knight.w2ent");         
CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\errant_knight\g_02_mg__errant_knight.w2ent");          
//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\errant_knight\g_03a_mg__errant_knight.w2ent");         
//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\errant_knight\g_03b_mg__errant_knight.w2ent");         
CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\errant_knight\g_03_mg__errant_knight.w2ent");

//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\guard\g_01a_mg__guard_lvl1.w2ent");                    
//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\guard\g_01a_mg__guard_lvl2.w2ent");                    
CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\guard\g_01_mg__guard_lvl1.w2ent");                     
CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\guard\g_01_mg__guard_lvl2.w2ent");                     
//CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\guard\g_02a_mg__guard_lvl1.w2ent");                    
CglovesGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\gloves\guard\g_02_mg__guard_lvl1.w2ent");                      
CglovesGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\gloves\g_01_mb__bob_knights.w2ent");                
CglovesGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\gloves\g_02_mb__bob_knights.w2ent");  

}

function ClegsGearArrayInit(){

ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\bare\l_01_mg__body.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\bare\l_01_mg__body_wet.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\bare\l_01a_mg__body_underwear.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\bare\l_01_mg__body_underwear.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\bare\l_01_mg__socks.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\casual_non_combat\l_01_mg__casual_towel.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\casual_non_combat\l_01a_mg__casual_towel.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\casual_non_combat\l_01a_mg__casual_nilfgaardian_pants.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\casual_non_combat\l_01a_mg__casual_skellige_pants.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\casual_non_combat\l_02a_mg__casual_skellige_pants.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\casual_non_combat\l_01_mg__casual_nilfgaardian_pants.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\casual_non_combat\l_01_mg__casual_skellige_pants.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\casual_non_combat\l_01_mg__yennefer_pants.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\casual_non_combat\l_01a_mg__yennefer_pants.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\casual_non_combat\l_02_mg__casual_skellige_pants.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_heavy\l_01a_mg__common_heavy_lvl1.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_heavy\l_01a_mg__common_heavy_lvl2.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_heavy\l_01a_mg__common_heavy_lvl3.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_heavy\l_01a_mg__common_heavy_lvl4.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_heavy\l_01_mg__common_heavy_lvl1.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_heavy\l_01_mg__common_heavy_lvl2.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_heavy\l_01_mg__common_heavy_lvl3.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_heavy\l_01_mg__common_heavy_lvl4.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_light\l_01a_mg__common_light_lvl1.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_light\l_01a_mg__common_light_lvl2.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_light\l_01a_mg__common_light_lvl3.w2ent");
ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_light\l_01a_mg__common_light_lvl4.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_light\l_01_mg__common_light_lvl1.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_light\l_01_mg__common_light_lvl2.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_light\l_01_mg__common_light_lvl3.w2ent");
//ClegsGearArray.PushBack("items\bodyparts\geralt_items\legs\common_light\l_01_mg__common_light_lvl4.w2ent");

ClegsGearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\legs\l1_01_mw__wild_hunt.w2ent");
ClegsGearArray.PushBack("characters\models\crowd_npc\wild_hunt_lvl3\legs\l1_02_mw__wild_hunt.w2ent");

ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\armor_vampire\l_01a_mg__vampire.w2ent");                 
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\armor_vampire\l_01_mg__vampire.w2ent");                  
ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\armor_vampire\q704_l_01a_mg__vampire.w2ent");            
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\armor_vampire\q704_l_01_mg__vampire.w2ent"); 

ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\errant_knight\l_01a_mg__errant_knight.w2ent");            
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\errant_knight\l_01_mg__errant_knight.w2ent");            
ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\errant_knight\l_02a_mg__errant_knight.w2ent");            
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\errant_knight\l_02_mg__errant_knight.w2ent");             
ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\errant_knight\l_03a_mg__errant_knight.w2ent");            
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\errant_knight\l_03_mg__errant_knight.w2ent");

ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\prison_outfit\l_01a_mg__prison_outfit.w2ent");           
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\prison_outfit\l_01_mg__prison_outfit.w2ent");

ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l2_01a_mg__bob.w2ent");          
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l2_01_mg__bob.w2ent");           
ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l2_02a_mg__bob.w2ent");          
//legsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l2_02_mg__bob.w2ent");           
ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l2_03a_mg__bob.w2ent");          
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l2_03_mg__bob.w2ent");           
ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l2_04a_mg__bob.w2ent");          
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l2_04_mg__bob.w2ent");           
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l_05a_mg__bob.w2ent"); //Die          
ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l_06a_mg__bob.w2ent");           
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l_06b_mg__bob.w2ent");           
//ClegsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\legs\casual_beauclair_outfit\l_06_mg__bob.w2ent");

ClegsGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\legs\l2_01_mb__bob_knights.w2ent");                 
ClegsGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\legs\l2_01_mb__mq7017_knight.w2ent");               
ClegsGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\legs\l2_02_mb__bob_knights.w2ent");                 
ClegsGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\legs\l2_03_mb__bob_knights.w2ent");                 
ClegsGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\legs\l2_04_mb__bob_knights.w2ent");                 
ClegsGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\legs\l2_05_mb__bob_knights.w2ent");              

}

function CBootsGearArrayInit(){

CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\bare\s_01_mg__body.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\bare\s_01_mg__body_highres.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\bare\s_01_mg__body_wet.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\casual_non_combat\ta_01_mg__casual_nilfgaardian_shoes.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\casual_non_combat\ta_01_mg__casual_skellige_shoes.w2ent");

CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_heavy\s_01_mg__common_heavy_lvl1.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_heavy\s_01_mg__common_heavy_lvl2.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_heavy\s_01_mg__common_heavy_lvl3.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_heavy\s_01_mg__common_heavy_lvl4.w2ent");
//CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_heavy\s_01a_mg__common_heavy_lvl4.w2ent");
//CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_heavy\s_02a_mg__common_heavy_lvl4.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_heavy\s_02_mg__common_heavy_lvl1.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_heavy\s_02_mg__common_heavy_lvl2.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_heavy\s_02_mg__common_heavy_lvl3.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_heavy\s_02_mg__common_heavy_lvl4.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_light\s_01_mg__common_light_lvl1.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_light\s_01_mg__common_light_lvl2.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_light\s_01_mg__common_light_lvl3.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_light\s_01_mg__common_light_lvl4.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_light\s_02_mg__common_light_lvl1.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_light\s_02_mg__common_light_lvl2.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_light\s_02_mg__common_light_lvl3.w2ent");
CbootsGearArray.PushBack("items\bodyparts\geralt_items\shoes\common_light\s_02_mg__common_light_lvl4.w2ent");

CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\armor_vampire\s_01_mg__vampire.w2ent");
CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\armor_vampire\q_704_s_01_mg__vampire_copy.w2ent");

CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\errant_knight\s_01_mg__errant_knight.w2ent");           
CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\errant_knight\s_02_mg__errant_knight.w2ent");           
CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\errant_knight\s_03_mg__errant_knight.w2ent");

CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\casual_beauclair_outfit\s_04_mg__bob.w2ent");           
CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\casual_beauclair_outfit\s_05_mg__bob.w2ent");           
CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\casual_beauclair_outfit\s_06a_mg__bob.w2ent");          
//CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\casual_beauclair_outfit\s_06_mg__bob.w2ent");           
CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\casual_beauclair_outfit\s_07a_mg__bob.w2ent");          
//CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\casual_beauclair_outfit\s_08a_mg__bob.w2ent");          
CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\casual_beauclair_outfit\s_08_mg__bob.w2ent");           
CbootsGearArray.PushBack("dlc\bob\data\items\bodyparts\geralt_items\shoes\casual_beauclair_outfit\s_09_mg__bob.w2ent");  
CbootsGearArray.PushBack("dlc\bob\data\characters\models\crowd_npc\bob_knight\shoes\s_01_mb__bob_knights.w2ent");  

}

//############################################################################


function ApplyHeadGear(){
var tempHG : CEntityTemplate;

tempHG = CreateTemplate(headgearArray[headgearSelection]);
	if(headgearEnabled){
		headgearPrevTemp = GearToogle(true,tempHG,headgearPrevTemp);
	}
	else if(headgearEnabled == false){
		GearToogle(false,tempHG,headgearPrevTemp);
	}
}

function ApplyAltHair(){
var tempAltHair : CEntityTemplate;

if((chestGearEnabled && chestSelection == 14) ||
	(headgearEnabled && (headgearSelection == 0 || 
						headgearSelection == 36 || 
						headgearSelection == 48 ||
						headgearSelection == 49) )){

	altHairEnabled = true;
	altHairSelection = 16;

}

tempAltHair = CreateTemplate(altHairArray[altHairSelection]);
	if(altHairEnabled){
		altHairPrevTemp = GearToogle(true,tempAltHair,altHairPrevTemp);
	}
	else if(altHairEnabled == false){
		GearToogle(false,tempAltHair,altHairPrevTemp);
	}
}

function ApplyCape(){
var tempCape : CEntityTemplate;

tempCape = CreateTemplate(capeArray[capeSelection]);
	if(capeEnabled){
		capePrevTemp = GearToogle(true,tempCape,capePrevTemp);
	}
	else if(capeEnabled == false){
		GearToogle(false,tempCape,capePrevTemp);
	}
}

function ApplyShoulders(){
var tempShoulders : CEntityTemplate;

tempShoulders = CreateTemplate(shouldersArray[shouldersSelection]);
	if(shouldersEnabled){
		shouldersPrevTemp = GearToogle(true,tempShoulders,shouldersPrevTemp);
	}
	else if(shouldersEnabled == false){
		GearToogle(false,tempShoulders,shouldersPrevTemp);
	}
}

function ApplyArms(){
var tempArms : CEntityTemplate;

tempArms = CreateTemplate(armsArray[armsSelection]);
	if(armsEnabled){
		armsPrevTemp = GearToogle(true,tempArms,armsPrevTemp);
	}
	else if(armsEnabled == false){
		GearToogle(false,tempArms,armsPrevTemp);
	}
}

function ApplyAccessories(){
var tempAccessories1 : CEntityTemplate;
var tempAccessories2 : CEntityTemplate;
var tempAccessories3 : CEntityTemplate;
var tempAccessories4 : CEntityTemplate;
var tempAccessories5 : CEntityTemplate;
var tempAccessories6 : CEntityTemplate;
var tempAccessories7 : CEntityTemplate;
var tempAccessories8 : CEntityTemplate;
var tempAccessories9 : CEntityTemplate;
var tempAccessories10 : CEntityTemplate;

//Acc1
tempAccessories1 = CreateTemplate(accessoriesArray[accessories1Selection]);
	if(accessories1Enabled){
		accessories1PrevTemp = GearToogle(true,tempAccessories1,accessories1PrevTemp);
		//theGame.GetGuiManager().ShowNotification((string)accessories1PrevTemp);
	}
	else if(accessories1Enabled == false){
		GearToogle(false,tempAccessories1,accessories1PrevTemp);
	}
	
	//Acc2
tempAccessories2 = CreateTemplate(accessoriesArray[accessories2Selection]);
	if(accessories2Enabled){
		accessories2PrevTemp = GearToogle(true,tempAccessories2,accessories2PrevTemp);
	}
	else if(accessories2Enabled == false){
		GearToogle(false,tempAccessories2,accessories2PrevTemp);
	}
	
	//Acc3
tempAccessories3 = CreateTemplate(accessoriesArray[accessories3Selection]);
	if(accessories3Enabled){
		accessories3PrevTemp = GearToogle(true,tempAccessories3,accessories3PrevTemp);
	}
	else if(accessories3Enabled == false){
		GearToogle(false,tempAccessories3,accessories3PrevTemp);
	}
	
	//Acc4
tempAccessories4 = CreateTemplate(accessoriesArray[accessories4Selection]);
	if(accessories4Enabled){
		accessories4PrevTemp = GearToogle(true,tempAccessories4,accessories4PrevTemp);
	}
	else if(accessories4Enabled == false){
		GearToogle(false,tempAccessories4,accessories4PrevTemp);
	}
	
	//Acc5
tempAccessories5 = CreateTemplate(accessoriesArray[accessories5Selection]);
	if(accessories5Enabled){
		accessories5PrevTemp = GearToogle(true,tempAccessories5,accessories5PrevTemp);
	}
	else if(accessories5Enabled == false){
		GearToogle(false,tempAccessories5,accessories5PrevTemp);
	}
	
	//Acc6
tempAccessories6 = CreateTemplate(accessoriesArray[accessories6Selection]);
	if(accessories6Enabled){
		accessories6PrevTemp = GearToogle(true,tempAccessories6,accessories6PrevTemp);
	}
	else if(accessories6Enabled == false){
		GearToogle(false,tempAccessories6,accessories6PrevTemp);
	}
	
	//Acc7
tempAccessories7 = CreateTemplate(accessoriesArray[accessories7Selection]);
	if(accessories7Enabled){
		accessories7PrevTemp = GearToogle(true,tempAccessories7,accessories7PrevTemp);
	}
	else if(accessories7Enabled == false){
		GearToogle(false,tempAccessories7,accessories7PrevTemp);
	}
	
	//Acc8
tempAccessories8 = CreateTemplate(accessoriesArray[accessories8Selection]);
	if(accessories8Enabled){
		accessories8PrevTemp = GearToogle(true,tempAccessories8,accessories8PrevTemp);
	}
	else if(accessories8Enabled == false){
		GearToogle(false,tempAccessories8,accessories8PrevTemp);
	}
	
	//Acc9
tempAccessories9 = CreateTemplate(accessoriesArray[accessories9Selection]);
	if(accessories9Enabled){
		accessories9PrevTemp = GearToogle(true,tempAccessories9,accessories9PrevTemp);
	}
	else if(accessories9Enabled == false){
		GearToogle(false,tempAccessories9,accessories9PrevTemp);
	}
	
	//Acc10
tempAccessories10 = CreateTemplate(accessoriesArray[accessories10Selection]);
	if(accessories10Enabled){
		accessories10PrevTemp = GearToogle(true,tempAccessories10,accessories10PrevTemp);
	}
	else if(accessories10Enabled == false){
		GearToogle(false,tempAccessories10,accessories10PrevTemp);
	}
}



function ApplyFaceGear(){
var tempfacegear : CEntityTemplate;

tempfacegear = CreateTemplate(facegearArray[facegearSelection]);
	if(facegearEnabled){
		facegearPrevTemp = GearToogle(true,tempfacegear,facegearPrevTemp);
		//theGame.GetGuiManager().ShowNotification((string)facegearPrevTemp);
	}
	else if(facegearEnabled == false){
		GearToogle(false,tempfacegear,facegearPrevTemp);
	}
}

function ApplyChestGear(){
var tempChestGear : CEntityTemplate;

tempChestGear = CreateTemplate(chestGearArray[chestSelection]);
	if(chestGearEnabled){
		chestGearPrevTemp = GearToogle(true,tempChestGear,chestGearPrevTemp);
	}
	else if(chestGearEnabled == false){
		GearToogle(false,tempChestGear,chestGearPrevTemp);
	}
}

function ApplyBootsGear(){
var tempBootsGear : CEntityTemplate;

tempBootsGear = CreateTemplate(bootsGearArray[bootsSelection]);
	if(bootsGearEnabled){
		bootsGearPrevTemp = GearToogle(true,tempBootsGear,bootsGearPrevTemp);
	}
	else if(bootsGearEnabled == false){
		GearToogle(false,tempBootsGear,bootsGearPrevTemp);
	}
}

function ApplyLegsGear(){
var tempLegsGear : CEntityTemplate;

tempLegsGear = CreateTemplate(legsGearArray[legsSelection]);
	if(legsGearEnabled){
		legsGearPrevTemp = GearToogle(true,tempLegsGear,legsGearPrevTemp);
	}
	else if(legsGearEnabled == false){
		GearToogle(false,tempLegsGear,legsGearPrevTemp);
	}
}

function ApplyGlovesGear(){
var tempGlovesGear : CEntityTemplate;

tempGlovesGear = CreateTemplate(glovesGearArray[glovesSelection]);
	if(glovesGearEnabled){
		glovesGearPrevTemp = GearToogle(true,tempGlovesGear,glovesGearPrevTemp);
	}
	else if(glovesGearEnabled == false){
		GearToogle(false,tempGlovesGear,glovesGearPrevTemp);
	}
}

//################COMMON SETS############################

function ApplyCChestGear(){
var tempCChestGear : CEntityTemplate;

tempCChestGear = CreateTemplate(CchestGearArray[CchestSelection]);
	if(CchestGearEnabled){
		CchestGearPrevTemp = GearToogle(true,tempCChestGear,CchestGearPrevTemp);
	}
	else if(CchestGearEnabled == false){
		GearToogle(false,tempCChestGear,CchestGearPrevTemp);
	}
}

function ApplyCBootsGear(){
var tempCBootsGear : CEntityTemplate;

tempCBootsGear = CreateTemplate(CbootsGearArray[CbootsSelection]);
	if(CbootsGearEnabled){
		CbootsGearPrevTemp = GearToogle(true,tempCBootsGear,CbootsGearPrevTemp);
	}
	else if(CbootsGearEnabled == false){
		GearToogle(false,tempCBootsGear,CbootsGearPrevTemp);
	}
}

function ApplyCLegsGear(){
var tempCLegsGear : CEntityTemplate;

tempCLegsGear = CreateTemplate(ClegsGearArray[ClegsSelection]);
	if(ClegsGearEnabled){
		ClegsGearPrevTemp = GearToogle(true,tempCLegsGear,ClegsGearPrevTemp);
	}
	else if(ClegsGearEnabled == false){
		GearToogle(false,tempCLegsGear,ClegsGearPrevTemp);
	}
}

function ApplyCGlovesGear(){
var tempCGlovesGear : CEntityTemplate;

tempCGlovesGear = CreateTemplate(CglovesGearArray[CglovesSelection]);
	if(CglovesGearEnabled){
		CglovesGearPrevTemp = GearToogle(true,tempCGlovesGear,CglovesGearPrevTemp);
	}
	else if(CglovesGearEnabled == false){
		GearToogle(false,tempCGlovesGear,CglovesGearPrevTemp);
	}
}


function ApplyFullBodyGear(){
var tempFullBodyGear : CEntityTemplate;

tempFullBodyGear = CreateTemplate(fullbodyGearArray[fullbodySelection]);
	if(fullbodyGearEnabled){
		fullbodyGearPrevTemp = GearToogle(true,tempFullBodyGear,fullbodyGearPrevTemp);
	}
	else if(fullbodyGearEnabled == false){
		GearToogle(false,tempFullBodyGear,fullbodyGearPrevTemp);
	}
}

//########################################################################


function CreateTemplate( entpath : string ) : CEntityTemplate
{
var temp : CEntityTemplate;

		temp = (CEntityTemplate)LoadResource(entpath, true);
		
		return temp;
}

function GearToogle(enabled : bool, template : CEntityTemplate, prevTemp : CEntityTemplate) : CEntityTemplate{

	var l_actor : CActor;
	var l_comp : CComponent;
	
	
	l_actor = thePlayer;
	l_comp = l_actor.GetComponentByClassName( 'CAppearanceComponent' );
	
		((CAppearanceComponent)l_comp).ExcludeAppearanceTemplate(prevTemp);
		//((CAppearanceComponent)l_comp).ExcludeAppearanceTemplate(template);

	if(enabled){
		
		((CAppearanceComponent)l_comp).IncludeAppearanceTemplate(template);
		
	}
	
	return template;
}


function WeaponsToogle(){
	var inv : CInventoryComponent;
	var ids : array<SItemUniqueId>;
	var size : int;
	var i	: int;
	var ent : CEntity;
	var item : SItemUniqueId;
	var witcher : W3PlayerWitcher;
	
	witcher = GetWitcherPlayer();
	inv = thePlayer.GetInventory();
	
	ids = inv.GetAllWeapons();
	size = ids.Size();
	
		
		//Steel Sword Toggle
		witcher.GetItemEquippedOnSlot(EES_SteelSword, item);		
					if(!stswEnabled){
		
						//inv.UnmountItem(ids[i],true);
						ent = inv.GetItemEntityUnsafe(item);
                        ent.SetHideInGame(true);
						stscabEnabled = false;
					}
					else if(stswEnabled && !stscabEnabled && !hideStscab){
						if(thePlayer.IsWeaponHeld('steelsword')){
							inv.MountItem(item,true);
							
						}
						else{
							inv.MountItem(item);
							
						}
					}
					else{
						ent = inv.GetItemEntityUnsafe(item);
						ent.SetHideInGame(false);
												
					}
		
		//Silver Sword Toggle		
		witcher.GetItemEquippedOnSlot(EES_SilverSword, item);		
					if(!svswEnabled){
		
						//inv.UnmountItem(ids[i],true);
						ent = inv.GetItemEntityUnsafe(item);
                        ent.SetHideInGame(true);
						svscabEnabled = false;
					}
					else if(svswEnabled && !svscabEnabled && !hideSvscab){
						if(thePlayer.IsWeaponHeld('silversword')){
							inv.MountItem(item,true);
							
						}
						else{
							inv.MountItem(item);
							
						}
					}
					else{
						ent = inv.GetItemEntityUnsafe(item);
						ent.SetHideInGame(false);
												
					}
		
		//Crossbow Toggle
		witcher.GetItemEquippedOnSlot(EES_RangedWeapon, item);		
					if(!crossbowEnabled){
                        ent = inv.GetItemEntityUnsafe(item);
                        ent.SetHideInGame(false);
						ent.SetHideInGame(true);
                    }
                    else{
                        ent = inv.GetItemEntityUnsafe(item);
                        ent.SetHideInGame(false);
                    }
				
		
		/*if( size > 0){
			
			for( i = 0; i < size; i+=1 ){
				
				
				
				if (inv.IsItemSilverSwordUsableByPlayer(ids[i]) && witcher.IsItemEquipped(ids[i]))
					
				{
				
					if(!svswEnabled){
		
						//inv.UnmountItem(ids[i],true);
						ent = inv.GetItemEntityUnsafe(ids[i]);
                        ent.SetHideInGame(true);
						svscabEnabled = false;
					}
					else if(svswEnabled && !svscabEnabled && !hideSvscab){
						if(thePlayer.IsWeaponHeld('silversword')){
							inv.MountItem(ids[i],true);
							
						}
						else{
							inv.MountItem(ids[i]);
							
						}
					}
					else{
							//inv.MountItem(ids[i]);
						ent = inv.GetItemEntityUnsafe(ids[i]);
						ent.SetHideInGame(false);
												
					}
				}
				
				/*
				if(inv.IsItemBolt(ids[i])){
						
					if(!crossbowEnabled){
                        
						ent = inv.GetItemEntityUnsafe(ids[i]);
                        ent.SetHideInGame(true);
                    }
                    else{
						ent = inv.GetItemEntityUnsafe(ids[i]);
                        ent.SetHideInGame(false);
                    }
				}
				
							
			}
		}*/
		
	
	//ids.Clear();

}

function IsCrossbowEnabled() : bool{
	if(crossbowEnabled)
		return true;
	else{
		return false;
	}
}

function ArmorToogle(enabled : bool){
	var inv : CInventoryComponent;
	var ids : array<SItemUniqueId>;
	var size : int;
	var i	: int;
	var witcher : W3PlayerWitcher;
	var itemId : SItemUniqueId;
	var ent : CEntity;
	
	
	inv = thePlayer.GetInventory();
	//inv.GetAllItems(ids);
	//size = ids.Size();
	witcher = GetWitcherPlayer();
	
	//Chest/Armor
		if(witcher.GetItemEquippedOnSlot(EES_Armor, itemId)){		
					if(!enabled){
                        ent = inv.GetItemEntityUnsafe(itemId);
						ent.SetHideInGame(true);
                    }
                    else{
                        ent = inv.GetItemEntityUnsafe(itemId);
                        ent.SetHideInGame(false);
                    }
		}
		else{
			ids = inv.GetItemsByName('Body torso medalion');
			size = ids.Size();
			if(!enabled){
			
				//theGame.GetGuiManager().ShowNotification((string)size);
							
				for( i = 0; i < size; i+=1 ){
						inv.DespawnItem(ids[i]);
				}	
			}
			else{
			
				if(size > 0){
						inv.MountItem(ids[0]);
					}
					else{
					ids.Clear();
					ids = inv.AddAnItem('Body torso medalion');
					inv.MountItem(ids[0]);
					}			
			}
		}
		ids.Clear();
	//Gloves
		if(witcher.GetItemEquippedOnSlot(EES_Gloves, itemId)){		
					if(!enabled){
                        ent = inv.GetItemEntityUnsafe(itemId);
						ent.SetHideInGame(true);
                    }
                    else{
                        ent = inv.GetItemEntityUnsafe(itemId);
                        ent.SetHideInGame(false);
                    }
		}
		else{
			ids = inv.GetItemsByName('Body palms 01');
			size = ids.Size();
			if(!enabled){
			
				//theGame.GetGuiManager().ShowNotification((string)size);
							
				for( i = 0; i < size; i+=1 ){
						inv.DespawnItem(ids[i]);
				}	
			}
			else{
			
				if(size > 0){
						inv.MountItem(ids[0]);
					}
					else{
					ids.Clear();
					ids = inv.AddAnItem('Body palms 01');
					inv.MountItem(ids[0]);
					}			
			}
		}
		ids.Clear();
	//Legs/Pants				
			if(witcher.GetItemEquippedOnSlot(EES_Pants, itemId)){		
					if(!enabled){
                        ent = inv.GetItemEntityUnsafe(itemId);
						ent.SetHideInGame(true);
                    }
                    else{
                        ent = inv.GetItemEntityUnsafe(itemId);
                        ent.SetHideInGame(false);
                    }
		}
		else{
			ids = inv.GetItemsByName('Body underwear 01');
			size = ids.Size();
			if(!enabled){
			
				//theGame.GetGuiManager().ShowNotification((string)size);
							
				for( i = 0; i < size; i+=1 ){
						inv.DespawnItem(ids[i]);
				}	
			}
			else{
			
				if(size > 0){
						inv.MountItem(ids[0]);
					}
					else{
					ids.Clear();
					ids = inv.AddAnItem('Body underwear 01');
					inv.MountItem(ids[0]);
					}			
			}
		}
		ids.Clear();
	
	//Shoes/Boots
		
		if(witcher.GetItemEquippedOnSlot(EES_Boots, itemId)){		
					if(!enabled){
                        ent = inv.GetItemEntityUnsafe(itemId);
						ent.SetHideInGame(true);
                    }
                    else{
                        ent = inv.GetItemEntityUnsafe(itemId);
                        ent.SetHideInGame(false);
                    }
		}
		else{
			ids = inv.GetItemsByName('Body feet 01');
			size = ids.Size();
			if(!enabled){
			
				//theGame.GetGuiManager().ShowNotification((string)size);
							
				for( i = 0; i < size; i+=1 ){
						inv.DespawnItem(ids[i]);
				}	
			}
			else{
			
				if(size > 0){
						inv.MountItem(ids[0]);
					}
					else{
					ids.Clear();
					ids = inv.AddAnItem('Body feet 01');
					inv.MountItem(ids[0]);
					}			
			}
		}
		
		/*if( size > 0){
			
			for( i = 0; i < size; i+=1 ){
				
				if (
					(inv.IsItemChestArmor(ids[i]) && witcher.IsItemEquipped(ids[i])) ||
					(inv.IsItemBoots(ids[i]) && witcher.IsItemEquipped(ids[i])) ||
					(inv.IsItemGloves(ids[i]) && witcher.IsItemEquipped(ids[i])) ||
					(inv.IsItemPants(ids[i]) && witcher.IsItemEquipped(ids[i]))
				){
				
					if(!enabled){
		
						inv.DespawnItem(ids[i]);
					}
					else{
					
						inv.MountItem(ids[i]);
					}
				}
			}
		}*/
		//ids.Clear();
		
		//Hands and Feet Fix when disabling AMM
		
		/*if(enabled){
				
			itemId = inv.GetItemFromSlot('EES_Gloves');
				
				if ( !inv.IsIdValid(itemId)){
				ids = inv.GetItemsByName('Body palms 01');
				size = ids.Size();
					if(size > 0){
						inv.MountItem(ids[0]);
					}
					else{
					ids.Clear();
					ids = inv.AddAnItem('Body palms 01');
					inv.MountItem(ids[0]);
					}
				}
				
				ids.Clear();
				
				itemId = inv.GetItemFromSlot('EES_Boots');
				
				if ( !inv.IsIdValid(itemId)){
				ids = inv.GetItemsByName('Body feet 01');
				size = ids.Size();
					if(size > 0){
						inv.MountItem(ids[0]);
					}
					else{
					ids.Clear();
					ids = inv.AddAnItem('Body feet 01');
					inv.MountItem(ids[0]);
					}
				}
				
		}
	
	ids.Clear();*/
}


	function Hidehair(){

		var inv : CInventoryComponent;
		var ids : array<SItemUniqueId>;
		var size : int;
		var i		: int;
		
		inv = thePlayer.GetInventory();

		ids = inv.GetItemsByCategory( 'hair' );
		size = ids.Size();
		
		if( size > 0 )
		{
			
			for( i = 0; i < size; i+=1 )
			{
				if(inv.IsItemMounted( ids[i] ) )
					inv.DespawnItem(ids[i]);
			}
			
		}
		
		ids.Clear();
	}

	function SetHairstyle(){
		var inv : CInventoryComponent;
		var witcher : W3PlayerWitcher;
		var ids : array<SItemUniqueId>;

		var size : int;
		var i : int;

		witcher = GetWitcherPlayer();
		inv = witcher.GetInventory();

		ids = inv.GetItemsByCategory( 'hair' );
		size = ids.Size();
		
		if( size > 0 )
		{
			
			for( i = 0; i < size; i+=1 )
			{
				inv.RemoveItem(ids[i], 1);
			}
			
		}
		
		ids.Clear();
		
			ids = inv.AddAnItem(hairArray[hairSelection]);
		
		inv.MountItem(ids[0]);
	}

//HEAD FUNCTIONS##########################################################
	
	function SetBeard( stage : int ){
	
		var acs : array< CComponent >;
		
		acs = thePlayer.GetComponentsByClassName( 'CHeadManagerComponent' );
		( ( CHeadManagerComponent ) acs[0] ).SetBeardStage( false, stage );
	}
		

	function robberymaskToogle(enabled : bool){

	var acs : array< CComponent >;

	acs = thePlayer.GetComponentsByClassName( 'CHeadManagerComponent' );

		if(enabled){
				
				if(enableTattoo && enableMark){
					( ( CHeadManagerComponent ) acs[0] ).SetCustomHead( 'head_robbery_mark_tattoo' );
				}
				else if(enableTattoo){
					( ( CHeadManagerComponent ) acs[0] ).SetCustomHead( 'head_robbery_tattoo' );
				}
				else if(enableMark){
					( ( CHeadManagerComponent ) acs[0] ).SetCustomHead( 'head_robbery_mark' );
				}
				else{
					( ( CHeadManagerComponent ) acs[0] ).SetCustomHead( 'head_robbery' );
				}
				

		}
		else{
		
				( ( CHeadManagerComponent ) acs[0] ).RemoveCustomHead();
			
		}
	}
	
	function InitHeadArrays(){
	
	headArray.PushBack('head_0');
	headArray.PushBack('head_1');
	headArray.PushBack('head_2');
	headArray.PushBack('head_3');
	headArray.PushBack('head_4');
	headArray.PushBack('head_5');
	headArray.PushBack('head_6');
	headArray.PushBack('head_7');
	
	headTattooArray.PushBack('head_0_tattoo');
	headTattooArray.PushBack('head_1_tattoo');
	headTattooArray.PushBack('head_2_tattoo');
	headTattooArray.PushBack('head_3_tattoo');
	headTattooArray.PushBack('head_4_tattoo');
	headTattooArray.PushBack('head_5_tattoo');
	headTattooArray.PushBack('head_6_tattoo');
	headTattooArray.PushBack('head_7_tattoo');
	
	headMarkArray.PushBack('head_0_mark');
	headMarkArray.PushBack('head_1_mark');
	headMarkArray.PushBack('head_2_mark');
	headMarkArray.PushBack('head_3_mark');
	headMarkArray.PushBack('head_4_mark');
	headMarkArray.PushBack('head_5_mark');
	headMarkArray.PushBack('head_6_mark');
	headMarkArray.PushBack('head_7_mark');
	
	headMarkTattooArray.PushBack('head_0_mark_tattoo');
	headMarkTattooArray.PushBack('head_1_mark_tattoo');
	headMarkTattooArray.PushBack('head_2_mark_tattoo');
	headMarkTattooArray.PushBack('head_3_mark_tattoo');
	headMarkTattooArray.PushBack('head_4_mark_tattoo');
	headMarkTattooArray.PushBack('head_5_mark_tattoo');
	headMarkTattooArray.PushBack('head_6_mark_tattoo');
	headMarkTattooArray.PushBack('head_7_mark_tattoo');
	
	}
	
	function SetHead(){
	
	var acs : array< CComponent >;

	acs = thePlayer.GetComponentsByClassName( 'CHeadManagerComponent' );
	
		if(headEnabled){
			
			if(enableTattoo && enableMark){
				( ( CHeadManagerComponent ) acs[0] ).SetCustomHead( headMarkTattooArray[beardSelection] );
			}
			else if(enableTattoo){
				( ( CHeadManagerComponent ) acs[0] ).SetCustomHead( headTattooArray[beardSelection] );
			}
			else if(enableMark){
				( ( CHeadManagerComponent ) acs[0] ).SetCustomHead( headMarkArray[beardSelection] );
			}
			else{
				( ( CHeadManagerComponent ) acs[0] ).RemoveCustomHead();
				( ( CHeadManagerComponent ) acs[0] ).SetCustomHead( headArray[beardSelection] );
				//theGame.GetGuiManager().ShowNotification((string)headArray[beardSelection]);
			}
			
			if(beardrefreshEnabled){
				( ( CHeadManagerComponent ) acs[0] ).RemoveCustomHead();
			}
			
		}
	
	}


//#####################################################################################

	
	function BodyToogle(enabled : bool){
	var inv : CInventoryComponent;
	var ids : array<SItemUniqueId>;
	var size : int;
	var i: int;
	
		
		inv = thePlayer.GetInventory();

		ids = inv.GetItemsByTag('Body');
		size = ids.Size();
			
		if( size > 0 )
		{
			if(!enabled){
				for( i = 0; i < size; i+=1 )
				{
					if(inv.IsItemMounted( ids[i] )){
							//if((!inv.IsItemWeapon(ids[i]) && !inv.IsItemCrossbow(ids[i])) && (inv.GetItemCategory(ids[i]) != 'head'))
							//{
								
											inv.DespawnItem(ids[i]);
																														
							//}
							
						
					}
					
					
				}				
				
			}
			
		}
		
	}
	
	function HeadToogle(enabled : bool){
	var inv : CInventoryComponent;
	var witcher : W3PlayerWitcher;
	var ids : array<SItemUniqueId>;
	var size : int;
	var i : int;		
	
	
		witcher = GetWitcherPlayer();
		inv = thePlayer.GetInventory();
		ids = inv.GetItemsByCategory('head');
		
		size = ids.Size();
		//theGame.GetGuiManager().ShowNotification((string)size);
		
		for(i=0;i < size;i+=1){
			if(enabled == false){
			
				inv.DespawnItem(ids[i]);			
			}
			else{
			
				//inv.MountItem(ids[i]);
				
			}
			
		}
		if(!hairEnabled || !headEnabled || headgearEnabled || altHairEnabled){
		
			Hidehair();
			
			if(altHairEnabled && headgearEnabled || !headEnabled){
				altHairEnabled = false;
				ApplyAltHair();
			}
		
		}
	}
	
	
//################################### Sword , FX and Scabbs ####################################
//###########################################################################################
	

function InitSword(){

			StSwordsArrayInit();
			SvSwordsArrayInit();
			SvscabArrayInit();
			StscabArrayInit();
			RuneLvlArrayInit();
			RuneTypeArrayInit();
			AeronFXArrayInit();
			OilArrayInit();			
}

function ReadStSwordConfig(){

		IgniFXEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwFXIgni');
		AardFXEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwFXAard');		
		QuenFXEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwFXQuen');
		YrdenFXEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwFXYrden');
		AxiiFXEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwFXAxii');
		
		irisFXEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'IrisFXEnabled');
		
		
		RuneLvlEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'RuneLvlEnabled');
		RuneAlwaysEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'RuneAlwaysEnabled');
		RuneTypeEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'RuneTypeEnabled');
		OilEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'OilEnabled');
		OilDisabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'OilDisabled');
		
		
		RuneLvlSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMStSwords', 'RuneLevelSelection'));
		RuneTypeSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMStSwords', 'RuneTypeSelection'));
		OilTypeSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMStSwords', 'OilTypeSelection'));
		
		stscabEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabEnabled');
		stscabSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabSelection'));
		
		hideStscab = inGameConfigWrapper.GetVarValue('AMMStSwords', 'HideStscab');
		
		stSwordEnabled = inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordEnabled');
		stSwordSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordSelection'));
		
}

function ReadSvSwordConfig(){

		IgniFXEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SwFXIgni');
		AardFXEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SwFXAard');		
		QuenFXEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SwFXQuen');
		YrdenFXEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SwFXYrden');
		AxiiFXEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SwFXAxii');
		
		aeronFXEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'AeronFXEnabled');
		aeronFXSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSvSwords', 'AeronFXSelection'));
		
		RuneLvlEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'RuneLvlEnabled');
		RuneAlwaysEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'RuneAlwaysEnabled');
		RuneTypeEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'RuneTypeEnabled');
		OilEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'OilEnabled');
		OilDisabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'OilDisabled');
		
		RuneLvlSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSvSwords', 'RuneLevelSelection'));
		RuneTypeSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSvSwords', 'RuneTypeSelection'));
		OilTypeSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSvSwords', 'OilTypeSelection'));
		
		svscabEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabEnabled');
		svscabSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabSelection'));
		
		hideSvscab = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'HideSvscab');
		
		svSwordEnabled = inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordEnabled');
		svSwordSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordSelection'));
}

function RuneLvlArrayInit(){

runeLvlArray.PushBack('rune_lvl0');
runeLvlArray.PushBack('rune_lvl1');
runeLvlArray.PushBack('rune_lvl2');
runeLvlArray.PushBack('rune_lvl3');

}

function RuneTypeArrayInit(){

runeTypeArray.PushBack('rune_stribog');
runeTypeArray.PushBack('rune_dazhbog');
runeTypeArray.PushBack('rune_devana');
runeTypeArray.PushBack('rune_zoria');
runeTypeArray.PushBack('rune_morana');
runeTypeArray.PushBack('rune_triglav');
runeTypeArray.PushBack('rune_svarog');
runeTypeArray.PushBack('rune_veles');
runeTypeArray.PushBack('rune_perun');
runeTypeArray.PushBack('rune_elemental');
runeTypeArray.PushBack('rune_pierog');
runeTypeArray.PushBack('rune_tvarog');

}

function OilArrayInit(){

oilArray.PushBack('oil_beast');
oilArray.PushBack('oil_cursed');
oilArray.PushBack('oil_venom');
oilArray.PushBack('oil_hybrid');
oilArray.PushBack('oil_insectoid');
oilArray.PushBack('oil_magical');
oilArray.PushBack('oil_necrophage');
oilArray.PushBack('oil_specter');
oilArray.PushBack('oil_vampire');
oilArray.PushBack('oil_draconide');
oilArray.PushBack('oil_ogre');
oilArray.PushBack('oil_relic');

}

function ApplyStscab(){
		var tempStscab : CEntityTemplate;

		tempStscab = CreateTemplate(stscabArray[stscabSelection]);
			if(stscabEnabled){
				stscabPrevTemp = GearToogle(true,tempStscab,stscabPrevTemp);
				hideStscab = true;

			}
			else if(stscabEnabled == false){
				GearToogle(false,tempStscab,stscabPrevTemp);
			}
	}

	function SvscabArrayInit(){
		
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1v_01.w2ent");                               
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1v_02.w2ent");                               
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1v_10.w2ent");                               
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1v_11.w2ent");                               
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_01.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_02.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_03.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_04.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_05.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_06.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_07.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_08.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_09.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_10.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_12.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_13.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_1_zirael.w2ent");                            
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_2v_01.w2ent");                               
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_2_01.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_2_02.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_2_03.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_2_04.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_3v_01.w2ent");                               
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_3_01.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_3_02.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_3_03.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_3_04.w2ent");                                
		svscabArray.PushBack("items\bodyparts\geralt_items\scabbards\silver_scabbards\scabbard_silver_3_05.w2ent");
		svscabArray.PushBack("items\weapons\swords\witcher_silver_scabbards\witcher_silver_bear_scabbard.w2ent");                                  
		svscabArray.PushBack("items\weapons\swords\witcher_silver_scabbards\witcher_silver_gryphon_scabbard.w2ent");                               
		svscabArray.PushBack("items\weapons\swords\witcher_silver_scabbards\witcher_silver_lynx_scabbard.w2ent");
		svscabArray.PushBack("dlc\dlc10\data\items\weapons\swords\witcher_silver_swords\witcher_silver_wolf_scabbard.w2ent");
		svscabArray.PushBack("dlc\ammdlc\data\scabs\lexarscab_silver.w2ent");
		svscabArray.PushBack("dlc\ammdlc\data\scabs\lexarscab_e3_silver_01.w2ent");
	}
	
	function ApplySvscab(){
		var tempSvscab : CEntityTemplate;

		tempSvscab = CreateTemplate(svscabArray[svscabSelection]);
			if(svscabEnabled){
				svscabPrevTemp = GearToogle(true,tempSvscab,svscabPrevTemp);
				hideSvscab = true;
			}
			else if(svscabEnabled == false){
				GearToogle(false,tempSvscab,svscabPrevTemp);
			}
	}
	
	function StscabArrayInit(){
	
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1v_01.w2ent");                                 
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1_01.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1_02.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1_02_02.w2ent");                               
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1_02_03.w2ent");                               
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1_03.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1_04.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1_04_02.w2ent");                               
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1_05.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1_06.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_1_wood.w2ent");                                
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_2v_01.w2ent");                                 
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_2_01.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_3v_01.w2ent");                                 
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_3_01.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_3_02.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_3_03.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_3_04.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\steel_scabbards\scabbard_steel_3_05.w2ent");                                  
		stscabArray.PushBack("items\weapons\swords\nilfgaardian_scabbards\nilfgaardian_scabbard_lvl1.w2ent");                                      
		stscabArray.PushBack("items\weapons\swords\nilfgaardian_scabbards\nilfgaardian_scabbard_lvl1_02.w2ent");                                   
		stscabArray.PushBack("items\weapons\swords\nilfgaardian_scabbards\nilfgaardian_scabbard_lvl2.w2ent");                                      
		stscabArray.PushBack("items\weapons\swords\nilfgaardian_scabbards\nilfgaardian_scabbard_lvl3.w2ent");                                      
		stscabArray.PushBack("items\weapons\swords\nilfgaardian_scabbards\nilfgaardian_scabbard_lvl4.w2ent");                                      
		stscabArray.PushBack("items\weapons\swords\nomansland_scabbards\nomansland_scabbard_lvl1.w2ent");                                          
		stscabArray.PushBack("items\weapons\swords\nomansland_scabbards\nomansland_scabbard_lvl2.w2ent");                                          
		stscabArray.PushBack("items\weapons\swords\nomansland_scabbards\nomansland_scabbard_lvl3.w2ent");                                          
		stscabArray.PushBack("items\weapons\swords\nomansland_scabbards\nomansland_scabbard_lvl4.w2ent");                                          
		stscabArray.PushBack("items\weapons\swords\novigraadan_scabbards\novigraadan_scabbard_lvl1.w2ent");                                        
		stscabArray.PushBack("items\weapons\swords\novigraadan_scabbards\novigraadan_scabbard_lvl2.w2ent");                                        
		stscabArray.PushBack("items\weapons\swords\novigraadan_scabbards\novigraadan_scabbard_lvl3.w2ent");                                        
		stscabArray.PushBack("items\weapons\swords\novigraadan_scabbards\novigraadan_scabbard_lvl4.w2ent");                                        
		stscabArray.PushBack("items\weapons\swords\novigraadan_scabbards\novigraadan_scabbard_lvl5.w2ent");                                        
		stscabArray.PushBack("items\weapons\swords\skellige_scabbards\skellige_scabbard_lvl1.w2ent");                                              
		stscabArray.PushBack("items\weapons\swords\skellige_scabbards\skellige_scabbard_lvl2.w2ent");                                              
		stscabArray.PushBack("items\weapons\swords\skellige_scabbards\skellige_scabbard_lvl3.w2ent");                                              
		stscabArray.PushBack("items\weapons\swords\skellige_scabbards\skellige_scabbard_lvl4.w2ent");

		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\sabre_scabbards\scabbard_sabre_1v_01.w2ent");                                 
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\sabre_scabbards\scabbard_sabre_1v_02.w2ent");                                 
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\sabre_scabbards\scabbard_sabre_1_01.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\sabre_scabbards\scabbard_sabre_1_01_02.w2ent");                               
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\sabre_scabbards\scabbard_sabre_1_01_03.w2ent");                               
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\sabre_scabbards\scabbard_sabre_1_02.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\sabre_scabbards\scabbard_sabre_1_03.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\sabre_scabbards\scabbard_sabre_1_04.w2ent");                                  
		stscabArray.PushBack("items\bodyparts\geralt_items\scabbards\sabre_scabbards\scabbard_sabre_1_05.w2ent");
		//stscabArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\scabbards\sabre_scabbards\scabbard_sabre_1_06.w2ent");//Floating                  

		//Witcher                                 							 
		stscabArray.PushBack("items\weapons\swords\witcher_steel_scabbards\witcher_steel_bear_scabbard.w2ent");                                    
		stscabArray.PushBack("items\weapons\swords\witcher_steel_scabbards\witcher_steel_gryphon_scabbard.w2ent");                                 
		stscabArray.PushBack("items\weapons\swords\witcher_steel_scabbards\witcher_steel_lynx_scabbard.w2ent");                      
		stscabArray.PushBack("dlc\dlc10\data\items\weapons\swords\witcher_steel_swords\witcher_steel_wolf_scabbard.w2ent");
		
		//stscabArray.PushBack("dlc\ep1\data\items\bodyparts\geralt_items\scabbards\witcher_ofir\witcher_steel_ofir_scabbard.w2ent");//Misplaced
		stscabArray.PushBack("dlc\ammdlc\data\scabs\lexarscab_steel.w2ent");
		stscabArray.PushBack("dlc\ammdlc\data\scabs\lexarscab_e3_steel_01.w2ent");
		stscabArray.PushBack("dlc\ammdlc\data\scabs\lexarscab_e3_steel_02.w2ent");
		
		stscabArray.PushBack("dlc\ammdlc\data\scabs\olgierdscab.w2ent");
		
				
	}
	
	
		
	function ApplySwordFX() : bool
	{
		var itemId : SItemUniqueId;
		var inv : CInventoryComponent;
		var ent : CEntity;
					
		inGameConfigWrapper = theGame.GetInGameConfigWrapper();
		
		inv = thePlayer.GetInventory();		
		itemId = inv.GetItemFromSlot('r_weapon');
		
		if ( !inv.IsIdValid(itemId) )
		{
			itemId = inv.GetItemFromSlot('l_weapon');
			
			if ( !inv.IsIdValid(itemId) ){
				return false;
			}
		}
			if(thePlayer.IsWeaponHeld('silversword')){ReadSvSwordConfig(); ent = svSwordCurEnt;/*ApplySvscab();SvScabbardsToggle();*/}
			else if(thePlayer.IsWeaponHeld('steelsword')){ReadStSwordConfig(); ent = stSwordCurEnt;/*ApplyStscab();StScabbardsToggle();*/}	
		
			if(IgniFXEnabled){inv.PlayItemEffect(itemId,'runeword_igni');}
			if(AardFXEnabled){inv.PlayItemEffect(itemId,'runeword_aard');}
			if(QuenFXEnabled){inv.PlayItemEffect(itemId,'runeword_quen');}
			if(YrdenFXEnabled){inv.PlayItemEffect(itemId,'runeword_yrden');}
			if(AxiiFXEnabled){inv.PlayItemEffect(itemId,'runeword_axii');}
				
			if(RuneLvlEnabled){inv.PlayItemEffect(itemId,runeLvlArray[RuneLvlSelection]);ent.PlayEffectSingle(runeLvlArray[RuneLvlSelection]);}
			if(RuneTypeEnabled){inv.PlayItemEffect(itemId,runeTypeArray[RuneTypeSelection]);ent.PlayEffectSingle(runeTypeArray[RuneTypeSelection]);}
			if(!OilDisabled){			
				if(OilEnabled){inv.PlayItemEffect(itemId,oilArray[OilTypeSelection]);ent.PlayEffectSingle(oilArray[OilTypeSelection]);}
			}
			if(RuneAlwaysEnabled){inv.PlayItemEffect(itemId,'rune_blast_loop'); ent.PlayEffectSingle('rune_blast_loop');}
			
			if(aeronFXEnabled){ent.PlayEffectSingle(aeronFXArray[aeronFXSelection]);}
			if(irisFXEnabled){ent.PlayEffectSingle('special_attack_charged');}
			
			return true;

	}
	
	function Oil(oilname : CName){
	
	var ent : CEntity;
	
	if(thePlayer.IsWeaponHeld('silversword')){ent = svSwordCurEnt;}
	else if(thePlayer.IsWeaponHeld('steelsword')){ent = stSwordCurEnt;}	
	
	ent.PlayEffectSingle(oilname);
	
	}
	
	
	function AeronFXArrayInit(){
	
	aeronFXArray.PushBack('charge_01');
	aeronFXArray.PushBack('charge_02');
	aeronFXArray.PushBack('charge_03');
	aeronFXArray.PushBack('charge_04');
	aeronFXArray.PushBack('charge_05');
	aeronFXArray.PushBack('charge_06');
	aeronFXArray.PushBack('charge_07');
	aeronFXArray.PushBack('charge_08');
	aeronFXArray.PushBack('charge_09');
	aeronFXArray.PushBack('charge_10');
	
	}
	
	function StopSwordFX(){
	var ent : CEntity;
	
	if(thePlayer.IsWeaponHeld('silversword')){ent = svSwordCurEnt;}
	else if(thePlayer.IsWeaponHeld('steelsword')){ent = stSwordCurEnt;}

	ent.StopAllEffects();
	
	}
	
	function MakeRuneGlow(makeitglow : bool){
		
	var ent : CEntity;
	
		if(thePlayer.IsWeaponHeld('silversword')){ent = svSwordCurEnt;}
		else if(thePlayer.IsWeaponHeld('steelsword')){ent = stSwordCurEnt;}
	
		if(makeitglow){
			ent.PlayEffectSingle('rune_blast_loop');
		}
		else{
			if(!RuneAlwaysEnabled)
			ent.StopEffect('rune_blast_loop');
		}
	}
	
	function HideScabs(){
	
	if(thePlayer.IsWeaponHeld('silversword')){/*ReadSvSwordConfig();/*ApplySvscab();*/SvScabbardsToggle();}
	else if(thePlayer.IsWeaponHeld('steelsword')){/*ReadStSwordConfig();/*ApplyStscab();*/StScabbardsToggle();}
	
	}
	
	function StScabbardsToggle(){
		var inv : CInventoryComponent;
		var ids : array<SItemUniqueId>;
		var size : int;
		var i	: int;
		var ent : CEntity;
		
		inv = thePlayer.GetInventory();
		
		ids = inv.GetItemsByCategory('steel_scabbards');
		size = ids.Size();
		//theGame.GetGuiManager().ShowNotification((string)size);
		
			if( size > 0){
				
				for( i = 0; i < size; i+=1 ){
					
						if(hideStscab || stscabEnabled || !stswEnabled){
							ent = inv.GetItemEntityUnsafe(ids[i]);
							ent.SetHideInGame(true);
							stscabEnt = ent;
														
						}
						else{
							/*if(stScabHidden){
								inv.MountItem(ids[i]);
								stScabHidden = false;
							}*/
							ent = inv.GetItemEntityUnsafe(ids[i]);
							ent.SetHideInGame(false);
							stscabEnt.SetHideInGame(false);
							
						}
				}
			}
	}
	
	function SvScabbardsToggle(){
		var inv : CInventoryComponent;
		var ids : array<SItemUniqueId>;
		var size : int;
		var i	: int;
		var ent : CEntity;
		
		inv = thePlayer.GetInventory();
		
		
		ids = inv.GetItemsByCategory('silver_scabbards');
		size = ids.Size();
		
			if( size > 0){
					
					for( i = 0; i < size; i+=1 ){
						
							if(hideSvscab || svscabEnabled || !svswEnabled){
								ent = inv.GetItemEntityUnsafe(ids[i]);
								ent.SetHideInGame(true);
								svscabEnt = ent;
																
							}
							else{
								/*if(svScabHidden){
									inv.MountItem(ids[i]);
									svScabHidden = false;
								}*/
								ent = inv.GetItemEntityUnsafe(ids[i]);
								ent.SetHideInGame(false);
								svscabEnt.SetHideInGame(false);
							}
					}
			}
	}
	
	//###########################################################################################
	//############################ AMM SWORDS ###################################################
	//###########################################################################################
	
	function StSwordsArrayInit(){
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_bear_sword_lvl1.w2ent");                     
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_bear_sword_lvl2.w2ent");                     
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_bear_sword_lvl3.w2ent");                     
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_bear_sword_lvl4.w2ent");
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_steel_swords\witcher_steel_bear_sword_lvl5.w2ent");
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_gryphon_sword_lvl1.w2ent");                  
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_gryphon_sword_lvl2.w2ent");                  
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_gryphon_sword_lvl3.w2ent");                  
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_gryphon_sword_lvl4.w2ent");
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_steel_swords\witcher_steel_gryphon_sword_lvl5.w2ent");                  
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_lynx_sword_lvl1.w2ent");                     
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_lynx_sword_lvl2.w2ent");                     
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_lynx_sword_lvl3.w2ent");                     
	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_lynx_sword_lvl4.w2ent");
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_steel_swords\witcher_steel_lynx_sword_lvl5.w2ent");
	stSwordArray.PushBack("dlc\dlc10\data\items\weapons\swords\witcher_steel_swords\witcher_steel_wolf_sword_lvl1.w2ent");      
	stSwordArray.PushBack("dlc\dlc10\data\items\weapons\swords\witcher_steel_swords\witcher_steel_wolf_sword_lvl2.w2ent");      
	stSwordArray.PushBack("dlc\dlc10\data\items\weapons\swords\witcher_steel_swords\witcher_steel_wolf_sword_lvl3.w2ent");      
	stSwordArray.PushBack("dlc\dlc10\data\items\weapons\swords\witcher_steel_swords\witcher_steel_wolf_sword_lvl4.w2ent");
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_steel_swords\witcher_steel_wolf_sword_lvl5.w2ent"); 

	stSwordArray.PushBack("items\weapons\swords\witcher_steel_swords\witcher_steel_lynx_sword_lvl1.w2ent");
	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\witcher_steel_swords\witcher_steel_viper_v2_sword_lvl1.w2ent");    
	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\witcher_steel_swords\witcher_steel_viper_v2_sword_lvl2.w2ent");    
	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\witcher_steel_swords\witcher_steel_viper_v2_sword_lvl3.w2ent");    
	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\witcher_steel_swords\witcher_steel_viper_v2_sword_lvl4.w2ent");

	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_steel_swords\witcher_steel_red_wolf_sword_lvl1.w2ent");    
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_steel_swords\witcher_steel_red_wolf_sword_lvl2.w2ent");
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_steel_swords\witcher_steel_manticora_ep2_sword_lvl1.w2ent");
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_steel_swords\witcher_steel_manticora_ep2_sword_lvl2.w2ent");
	

	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\steel_swords\steel_sword_ep1_01.w2ent");                           
	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\steel_swords\steel_sword_ep1_02.w2ent");                           
	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\steel_swords\steel_sword_ep1_03.w2ent");                           
	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\steel_swords\steel_sword_ep1_04.w2ent");                           
																													  
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\guard_swords\guard_lvl1_sword.w2ent");                             
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\guard_swords\guard_lvl2_sword.w2ent");                             
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\knight_swords\knight_lvl1_sword.w2ent");                           
					   
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\squire_swords\squire_lvl1_sword.w2ent");
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\toussaint_swords\toussaint_sword_lv1.w2ent");                      
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\toussaint_swords\toussaint_sword_lv2.w2ent");                        

	stSwordArray.PushBack("items\weapons\swords\wildhunt_swords\wildhunt_sword_lvl1.w2ent");                                    
	stSwordArray.PushBack("items\weapons\swords\wildhunt_swords\wildhunt_sword_lvl2.w2ent");                                                                   
	stSwordArray.PushBack("items\weapons\swords\wildhunt_swords\wildhunt_sword_lvl3.w2ent");                                    
	stSwordArray.PushBack("items\weapons\swords\wildhunt_swords\wildhunt_sword_lvl4.w2ent");

	stSwordArray.PushBack("items\weapons\swords\dwarven_swords\dwarven_sword_lvl1.w2ent");                                      
	stSwordArray.PushBack("items\weapons\swords\dwarven_swords\dwarven_sword_lvl2.w2ent");                                      
	stSwordArray.PushBack("items\weapons\swords\gnomish_swords\gnomish_sword_lvl1.w2ent");                                      
	stSwordArray.PushBack("items\weapons\swords\gnomish_swords\gnomish_sword_lvl2.w2ent");
										  
	stSwordArray.PushBack("items\weapons\swords\inquisitor_swords\inquisitor_sword_lvl1.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\inquisitor_swords\inquisitor_sword_lvl2.w2ent");                                
							   
	stSwordArray.PushBack("items\weapons\swords\nilfgaardian_swords\nilfgaardian_sword_lvl1.w2ent");                            
	stSwordArray.PushBack("items\weapons\swords\nilfgaardian_swords\nilfgaardian_sword_lvl2.w2ent");                                                   
	stSwordArray.PushBack("items\weapons\swords\nilfgaardian_swords\nilfgaardian_sword_lvl3.w2ent");                            
	stSwordArray.PushBack("items\weapons\swords\nilfgaardian_swords\nilfgaardian_sword_lvl4.w2ent");                            
							   
	stSwordArray.PushBack("items\weapons\swords\nomansland_swords\nomansland_sword_lvl1.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\nomansland_swords\nomansland_sword_lvl2.w2ent");                                                          
	stSwordArray.PushBack("items\weapons\swords\nomansland_swords\nomansland_sword_lvl3.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\nomansland_swords\nomansland_sword_lvl4.w2ent");                                
								  
	stSwordArray.PushBack("items\weapons\swords\novigraadan_swords\novigraadan_sword_lvl1.w2ent");                              
	stSwordArray.PushBack("items\weapons\swords\novigraadan_swords\novigraadan_sword_lvl2.w2ent");                              
	stSwordArray.PushBack("items\weapons\swords\novigraadan_swords\novigraadan_sword_lvl3.w2ent");                              
	stSwordArray.PushBack("items\weapons\swords\novigraadan_swords\novigraadan_sword_lvl4.w2ent");
															 
	stSwordArray.PushBack("items\weapons\swords\scoiataels_swords\scoiataels_sword_lvl1.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\scoiataels_swords\scoiataels_sword_lvl2.w2ent");                                                           
	stSwordArray.PushBack("items\weapons\swords\scoiataels_swords\scoiataels_sword_lvl3.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\scoiataels_swords\scoiataels_sword_lvl4.w2ent");

	stSwordArray.PushBack("items\weapons\swords\skellige_swords\skellige_sword_lvl1.w2ent");                                    
	stSwordArray.PushBack("items\weapons\swords\skellige_swords\skellige_sword_lvl2.w2ent");                                                                 
	stSwordArray.PushBack("items\weapons\swords\skellige_swords\skellige_sword_lvl3.w2ent");                                    
	stSwordArray.PushBack("items\weapons\swords\skellige_swords\skellige_sword_lvl4.w2ent");                                                          
	
	stSwordArray.PushBack("items\weapons\swords\short_swords\short_sword_lvl1.w2ent");                                                                               
	stSwordArray.PushBack("items\weapons\swords\short_swords\short_sword_lvl2.w2ent");
	
	stSwordArray.PushBack("items\weapons\swords\steel_swords_legendary\steel_legendary_glory_of_the_north.w2ent");              
	stSwordArray.PushBack("items\weapons\swords\steel_swords_legendary\steel_legendary_tor_lara.w2ent");   

	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_abarad.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_angivare.w2ent");                              
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_arbitrator.w2ent");                            
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_ardaenye.w2ent");                              
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_ashrune.w2ent");                               
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_barber.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_beanshie.w2ent");                              
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_black_unicorn.w2ent");                         
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_black_wolf.w2ent");                            
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_bloede_aedd.w2ent");                           
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_caerme.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_caroline.w2ent");                              
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_cleaver.w2ent");                               
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_dancer.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_daystar.w2ent");                               
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_deireadh.w2ent");                              
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_devine.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_dol_blathana.w2ent");                          
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_dyaebl.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_gwestog.w2ent");                               
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_gwyhyr.w2ent");                                
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_harvall.w2ent");                               
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_head_taker.w2ent");                            
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_inis.w2ent");                                  
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_karabela.w2ent");                              
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_longclaw.w2ent");                              
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_lune.w2ent");                                  
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_mourner.w2ent");                               
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_ultimatum.w2ent");                             
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_vran.w2ent");                                  
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_vynbleidd.w2ent");                             
	stSwordArray.PushBack("items\weapons\swords\steel_swords_unique\steel_unique_xentia.w2ent");
	
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\sword_for_champion_of_arena\sword_for_champion_of_arena.w2ent");   
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\vampire_sword\steel_vampire.w2ent");
	stSwordArray.PushBack("dlc\bob\data\items\weapons\swords\vampire_sword\q704_steel_vampire.w2ent");                          
		
	stSwordArray.PushBack("items\weapons\unique\vesemir_steel_sword.w2ent");
	stSwordArray.PushBack("items\weapons\unique\sword__ciri.w2ent");
	stSwordArray.PushBack("items\weapons\unique\imlerith_mace.w2ent");
	stSwordArray.PushBack("items\weapons\unique\caranthil_staff.w2ent");
		
	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\unique\ghost_sabre\ghost_sabre.w2ent"); 
	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\unique\olgierd_sabre\olgierd_sabre_curved.w2ent");	
	stSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\unique\olgierd_sabre\olgierd_sabre.w2ent");                        

	}
	
	function SvSwordsArrayInit(){
	
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_bear_sword_lvl1.w2ent");                   
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_bear_sword_lvl2.w2ent");                   
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_bear_sword_lvl3.w2ent");                   
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_bear_sword_lvl4.w2ent");
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_bear_sword_lvl5.w2ent");                   
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_gryphon_sword_lvl1.w2ent");                
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_gryphon_sword_lvl2.w2ent");                
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_gryphon_sword_lvl3.w2ent");                
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_gryphon_sword_lvl4.w2ent");
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_gryphon_sword_lvl5.w2ent");                
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_lynx_sword_lvl1.w2ent");                   
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_lynx_sword_lvl2.w2ent");                   
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_lynx_sword_lvl3.w2ent");                   
	svSwordArray.PushBack("items\weapons\swords\witcher_silver_swords\witcher_silver_lynx_sword_lvl4.w2ent");
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_lynx_sword_lvl5.w2ent");
	svSwordArray.PushBack("dlc\dlc10\data\items\weapons\swords\witcher_silver_swords\witcher_silver_wolf_sword_lvl1.w2ent");    
	svSwordArray.PushBack("dlc\dlc10\data\items\weapons\swords\witcher_silver_swords\witcher_silver_wolf_sword_lvl2.w2ent");    
	svSwordArray.PushBack("dlc\dlc10\data\items\weapons\swords\witcher_silver_swords\witcher_silver_wolf_sword_lvl3.w2ent");    
	svSwordArray.PushBack("dlc\dlc10\data\items\weapons\swords\witcher_silver_swords\witcher_silver_wolf_sword_lvl4.w2ent");
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_wolf_sword_lvl5.w2ent"); 
	
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_red_wolf_sword_lvl1.w2ent");  
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_red_wolf_sword_lvl2.w2ent");
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_manticora_ep2_sword_lvl1.w2ent");
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_manticora_ep2_sword_lvl2.w2ent");
	
	svSwordArray.PushBack("items\weapons\swords\silver_swords\silver_sword_lvl1.w2ent");
	svSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\witcher_silver_swords\witcher_silver_viper_v2_sword_lvl1.w2ent");  
	svSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\witcher_silver_swords\witcher_silver_viper_v2_sword_lvl2.w2ent");  
	svSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\witcher_silver_swords\witcher_silver_viper_v2_sword_lvl3.w2ent");  
	svSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\witcher_silver_swords\witcher_silver_viper_v2_sword_lvl4.w2ent");
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_viper_ep2_sword_lvl2.w2ent"); 
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_viper_ep2_sword_lvl3.w2ent"); 
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\witcher_silver_swords\witcher_silver_viper_ep2_sword_lvl4.w2ent");  
	
	svSwordArray.PushBack("items\weapons\swords\silver_swords\silver_sword_lvl1.w2ent");                                        
	svSwordArray.PushBack("items\weapons\swords\silver_swords\silver_sword_lvl2.w2ent");                                        
	svSwordArray.PushBack("items\weapons\swords\silver_swords\silver_sword_lvl3.w2ent");                                        
	svSwordArray.PushBack("items\weapons\swords\silver_swords\silver_sword_lvl4.w2ent");                                        
	svSwordArray.PushBack("items\weapons\swords\silver_swords\silver_sword_lvl5.w2ent");                                        
	svSwordArray.PushBack("items\weapons\swords\silver_swords\silver_sword_lvl6.w2ent");                                        
	svSwordArray.PushBack("items\weapons\swords\silver_swords\silver_sword_lvl7.w2ent");                                        
	svSwordArray.PushBack("items\weapons\swords\silver_swords\silver_sword_lvl8.w2ent");                                                                 

	svSwordArray.PushBack("items\weapons\swords\silver_swords\dwarven_silver_sword_lvl1.w2ent");                                
	svSwordArray.PushBack("items\weapons\swords\silver_swords\dwarven_silver_sword_lvl2.w2ent");
			
	                                        
	svSwordArray.PushBack("items\weapons\swords\silver_swords\elven_silver_sword_lvl1.w2ent");                                  
	svSwordArray.PushBack("items\weapons\swords\silver_swords\elven_silver_sword_lvl2.w2ent");                                  
	svSwordArray.PushBack("items\weapons\swords\silver_swords\gnomish_silver_sword_lvl1.w2ent");                                
	svSwordArray.PushBack("items\weapons\swords\silver_swords\gnomish_silver_sword_lvl2.w2ent");                                 

	svSwordArray.PushBack("items\weapons\swords\silver_swords_legendary\silver_legendary_breath_of_the_north.w2ent");           
	svSwordArray.PushBack("items\weapons\swords\silver_swords_legendary\silver_legendary_tor_zirael.w2ent");                    

	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_addan_deith.w2ent");                         
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_aerondight.w2ent");                          
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_anathema.w2ent");                            
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_anth.w2ent");                                
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_arainne.w2ent");                             
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_azurewrath.w2ent");                          
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_blade_of_ys.w2ent");                         
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_blood_sword.w2ent");                         
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_dearg_deith.w2ent");                         
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_deithwen.w2ent");                            
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_fate.w2ent");                                
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_gynvael.w2ent");                             
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_gynvael_aedd.w2ent");                        
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_harpy.w2ent");                               
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_havcaaren.w2ent");                           
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_loathen.w2ent");                             
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_moonblade.w2ent");                           
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_naevde_sedhe.w2ent");                        
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_negotiator.w2ent");                          
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_reach_of_the_damned.w2ent");                 
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_rose_of_aelirenn.w2ent");                    
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_tlereg.w2ent");                              
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_virgin.w2ent");                              
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_weeper.w2ent");                              
	svSwordArray.PushBack("items\weapons\swords\silver_swords_unique\silver_unique_zerrikanterment.w2ent");
	
	svSwordArray.PushBack("items\weapons\swords\silver_swords\e3_silver_sword.w2ent"); 
	svSwordArray.PushBack("dlc\ep1\data\items\weapons\swords\silver_swords\silver_sword_ep1.w2ent");
	svSwordArray.PushBack("dlc\bob\data\items\weapons\swords\q704_silver_vampire\q704_silver_vampire.w2ent");
	svSwordArray.PushBack("items\weapons\unique\vesemir_silver_sword.w2ent");
	svSwordArray.PushBack("dlc\bob\data\quests\minor_quests\quest_files\mq7006_the_paths_of_destiny\entities\mq7006_aerondight.w2ent");
	}
	
	function SwordsChange(optional whichswords : int){
		var ent, ent2 : CEntity;
		var inv : CInventoryComponent;
		var i    : float;
		var temp : CEntityTemplate;
		var item : SItemUniqueId;
		var meshcomp, animcomp : CComponent;
		var wSword : CWitcherSword;
		var visible : bool;

		inv = thePlayer.GetInventory();

		if(whichswords == 1 || whichswords != 2){
			GetWitcherPlayer().GetItemEquippedOnSlot(EES_SteelSword, item);

			ent = inv.GetItemEntityUnsafe(item);

			animcomp = ent.GetComponentByClassName('CAnimatedComponent');
			meshcomp = ent.GetComponentByClassName('CMeshComponent');
			
			stSwordCurEnt.Destroy();
			
			if(stSwordEnabled){
			//i = 0.01;
			visible = false;
			
			temp = CreateTemplate(stSwordArray[stSwordSelection]);
			ent2 = theGame.CreateEntity(temp, ent.GetWorldPosition(), ent.GetWorldRotation());
						
			ent2.CreateAttachment( ent );
			
			stSwordCurEnt = ent2;
			}
			else{
			//i = 1.0;
			visible = true;
			}

			//animcomp.SetScale(Vector(i,i,i,1));
			//meshcomp.SetScale(Vector(i,i,i,1));
			((CMeshComponent)meshcomp).SetVisible(visible);
		}
		
		
		//Silver Sword Change
		if(whichswords == 2 || whichswords != 1 ){
			GetWitcherPlayer().GetItemEquippedOnSlot(EES_SilverSword, item);

			ent = inv.GetItemEntityUnsafe(item);

			animcomp = ent.GetComponentByClassName('CAnimatedComponent');
			meshcomp = ent.GetComponentByClassName('CMeshComponent');
			
			svSwordCurEnt.Destroy();
			
			if(svSwordEnabled){
			//i = 0.00001;
			visible = false;
			
			temp = CreateTemplate(svSwordArray[svSwordSelection]);
			ent2 = theGame.CreateEntity(temp, ent.GetWorldPosition(), ent.GetWorldRotation());

			ent2.CreateAttachment( ent );
			
			svSwordCurEnt = ent2;
			}
			else{
			//i = 1.0;
			visible = true;
			}

			//animcomp.SetScale(Vector(i,i,i,1));
			//meshcomp.SetScale(Vector(i,i,i,1));
			((CMeshComponent)meshcomp).SetVisible(visible);
		}
	}
	
	function ThrowBombFix(destroy : bool){
	
		if(stSwordEnabled && !thePlayer.IsWeaponHeld('steelsword')){
			if(destroy){
				stSwordCurEnt.Destroy();
			}
			else{
			SwordsChange(1);
			
			}
		
		}
		
		if(svSwordEnabled && !thePlayer.IsWeaponHeld('silversword')){
			if(destroy){
				svSwordCurEnt.Destroy();
			}
			else{
			SwordsChange(2);
			
			}
		
		}
	
	}
	
	
	//###########################################################################################
	//###########################################################################################
	
	function HeadCapeToggle(enabled : bool){
		
		var capeToggle : bool;
		var headgearToggle : bool;
		
		capeToggle = inGameConfigWrapper.GetVarValue('AMM', 'CapeToggle');
		headgearToggle = inGameConfigWrapper.GetVarValue('AMM', 'HeadGearToggle');
	
		hairEnabled = inGameConfigWrapper.GetVarValue('AMMHead', 'HairEnabled');
		hairSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMHead', 'HairSelection'));
		altHairEnabled = inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairEnabled');
		altHairSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairSelection'));
		headgearSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearSelection'));
		capeSelection = StringToInt(inGameConfigWrapper.GetVarValue('AMMCape', 'CapeSelection'));
		
		if(!enabled){
			
			if(headgearToggle){
				inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearEnabled', true);
				headgearEnabled = true;
				//HeadGear Refresh
				ApplyHeadGear();
				Hidehair();
				
				altHairEnabled = false;
				ApplyAltHair();
			}
			if(capeToggle){			
				inGameConfigWrapper.SetVarValue('AMMCape', 'CapeEnabled', true);
				capeEnabled = true;
				//CapeRefresh
				ApplyCape();
			}
						
			headcapeToggle = true;
		}
		else{
			if(headgearToggle){			
				inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearEnabled', false);
				headgearEnabled = false;
				//HeadGear Refresh
				ApplyHeadGear();
				
				if(hairEnabled && !altHairEnabled)
				SetHairstyle();
				
				ApplyAltHair();
			}
			
			if(capeToggle){
				inGameConfigWrapper.SetVarValue('AMMCape', 'CapeEnabled', false);
				capeEnabled = false;
				//CapeRefresh
				ApplyCape();
			}
						
			headcapeToggle = false;
		}
	
	}
	
	event OnHeadCapePress (action : SInputAction){
	
		if(IsPressed(action)){
			HeadCapeToggle(headcapeToggle);
			
		}
	}
	
	
	function AMMToggle(){
	AMMDisabled = inGameConfigWrapper.GetVarValue('AMM', 'AMMDisabled');
	
	if(AMMDisabled){
		inGameConfigWrapper.SetVarValue('AMM', 'AMMDisabled', false);
	}
	else{
		inGameConfigWrapper.SetVarValue('AMM', 'AMMDisabled', true);
	}
	
	AMMDisabled = inGameConfigWrapper.GetVarValue('AMM', 'AMMDisabled');
				
			if(!AMMisDisabled && !AMMDisabled){
				RefreshAppearance();
				//theGame.GetGuiManager().ShowNotification("So Refresh");
			}		
			else if(!AMMisDisabled && AMMDisabled){
				DisableAMM();
				RefreshAppearance();
				theGame.GetGuiManager().ShowNotification("AMM Disabled/Saved Config");
			}
			else if(AMMisDisabled && !AMMDisabled){
				EnableAMM();
				RefreshAppearance();
				theGame.GetGuiManager().ShowNotification("AMM Enabled/Restored Config");
			}
	
	}
	
	event OnAMMToggle (action : SInputAction){
	
		if(IsPressed(action)){
			AMMToggle();
		}
	}


	
//######################################################################################################
//################################# AMM for Roach ######################################################
//######################################################################################################	

	function InitAMMRoach(){
	
	HorseArrayInit();
	SaddleArrayInit();
	BlindersArrayInit();
	HairsArrayInit();
	TailsArrayInit();
	BagsArrayInit();
	TrophiesArrayInit();
	ReinsArrayInit();
	HarnessArrayInit();
	AccArrayInit();
		
	}
	
	function ReadRoachConfig(){
	
	inGameConfigWrapper = theGame.GetInGameConfigWrapper();
	
	//blockRoachRefresh = inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'BlockRoachRefresh');
	horseEnabled = inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseEnabled');
	horseSelection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseSelection'));
	hideSaddle = inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideSaddle');
	hideBags = inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBags');
	hideReins = inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideReins');
	hideHarness = inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHarness');
	hideBlinders = inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBlinders');
	hideTail = inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTail');
	hideHair = inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHair');
	hideTrophy = inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTrophy');
	
	devilFXToggle = inGameConfigWrapper.GetVarValue('AMMRoachFX', 'HorseFXEnabled');
	ruinFXToggle = inGameConfigWrapper.GetVarValue('AMMRoachFX', 'RuinFXEnabled');
	iceFXToggle = inGameConfigWrapper.GetVarValue('AMMRoachFX', 'IceFXEnabled');
	
	saddleEnabled = inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleEnabled');
	saddleSelection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleSelection'));
	
	blindersEnabled = inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersEnabled');
	blindersSelection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersSelection'));
	
	hairsEnabled = inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsEnabled');
	hairsSelection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsSelection'));
	
	tailsEnabled = inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsEnabled');
	tailsSelection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsSelection'));
	
	bagsEnabled = inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsEnabled');
	bagsSelection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsSelection'));
	
	trophiesEnabled = inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesEnabled');
	trophiesSelection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesSelection'));
	
	reinsEnabled = inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsEnabled');
	reinsSelection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsSelection'));
	
	harnessEnabled = inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessEnabled');
	harnessSelection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessSelection'));
	
	acc1Enabled = inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Enabled');
	acc1Selection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Selection'));
	
	acc2Enabled = inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Enabled');
	acc2Selection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Selection'));
	
	acc3Enabled = inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Enabled');
	acc3Selection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Selection'));
	
	acc4Enabled = inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Enabled');
	acc4Selection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Selection'));
	
	acc5Enabled = inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Enabled');
	acc5Selection =  StringToInt(inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Selection'));
	
	}
	
	function RefreshRoach(){
	
		ReadRoachConfig();
		
		//if(!blockRoachRefresh){
		changehorse(horseEnabled,horseArray[horseSelection]);
		
		ApplySaddle();
		ApplyBlinders();
		ApplyHairs();
		ApplyTails();
		ApplyBags();
		ApplyTrophies();
		ApplyReins();
		ApplyHarness();
		ApplyAcc();
		
		HideParts();
		DevilFXToggle(devilFXToggle);
		RuinFXToggle(ruinFXToggle);
		IceFXToggle(iceFXToggle);
		//}
	}
	
	function HorseGearToogle(enabled : bool, template : CEntityTemplate, prevTemp : CEntityTemplate) : CEntityTemplate{

		var horse : CNewNPC;
		var l_actor : CActor;
		var l_comp : CComponent;
		
		horse = thePlayer.GetHorseWithInventory();
		l_actor = horse;
		l_comp = l_actor.GetComponentByClassName( 'CAppearanceComponent' );

		((CAppearanceComponent)l_comp).ExcludeAppearanceTemplate(prevTemp);
		//((CAppearanceComponent)l_comp).ExcludeAppearanceTemplate(template);
		

		if(enabled){
			
			((CAppearanceComponent)l_comp).IncludeAppearanceTemplate(template);
		}
		
		return template;
	}
	
	
	function ApplySaddle(){
		var tempSaddle : CEntityTemplate;

		tempSaddle = CreateTemplate(saddleArray[saddleSelection]);
			if(saddleEnabled){
				saddlePrevTemp = HorseGearToogle(true,tempSaddle,saddlePrevTemp);
				hideSaddle = true;
			}
			else if(saddleEnabled == false){
				HorseGearToogle(false,tempSaddle,saddlePrevTemp);
			}
	}
	
	function SaddleArrayInit(){
		
		saddleArray.PushBack("items\horse_items\saddles\s_01_hd__saddle_pled.w2ent");
		saddleArray.PushBack("items\horse_items\saddles\s_01_hd__saddle_lvl1.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_01_hd__saddle_lvl2.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_01_hd__saddle_lvl3.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_01_hd__saddle_lvl4.w2ent");                                                                                                               
		saddleArray.PushBack("items\horse_items\saddles\s_02_hd__saddle_lvl1.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_02_hd__saddle_lvl2.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_02_hd__saddle_lvl3.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_02_hd__saddle_lvl4.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_03_hd__saddle_lvl1.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_03_hd__saddle_lvl2.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_03_hd__saddle_lvl3.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_03_hd__saddle_lvl4.w2ent");                                                             
		saddleArray.PushBack("items\horse_items\saddles\s_04_hd__saddle_lvl3.w2ent");
		saddleArray.PushBack("characters\models\animals\horse\draft\s_01_hd__saddle_racing.w2ent");  
		saddleArray.PushBack("characters\models\animals\horse\draft\s_01_hd__novigrad.w2ent");                                                    
		saddleArray.PushBack("characters\models\animals\horse\draft\s_02_hd__novigrad.w2ent");                                                    
		saddleArray.PushBack("characters\models\animals\horse\draft\s_03_hd__novigrad.w2ent");                                                    
		saddleArray.PushBack("characters\models\animals\horse\draft\s_04_hd__novigrad.w2ent");
		saddleArray.PushBack("dlc\dlc1\data\horse_items\saddles\s_01_hd__saddle_temerian.w2ent");
		saddleArray.PushBack("dlc\dlc5\data\horse_items\saddles\s_01_hd__saddle_nilfgaard.w2ent");
		saddleArray.PushBack("dlc\dlc14\data\horse_items\saddles\s_01_hd__saddle_skellige.w2ent");
		saddleArray.PushBack("characters\models\animals\horse\wild_hunt\s_01_hw__wild_hunt.w2ent");
		saddleArray.PushBack("dlc\ep1\data\items\horse_items\saddles\s_01_hd__saddle_ofir.w2ent");
		saddleArray.PushBack("dlc\ep1\data\items\horse_items\saddles\s_01_hd__saddle_demonic.w2ent");
		
		//Toussaint
		
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_01_hd__bob_knight.w2ent");                                                                       
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_02_hd__bob_knight.w2ent");
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_02_hd__bob_cutscene.w2ent"); 		
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_03_hd__bob_knight.w2ent"); 
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_01_hd__bob_witcher_lvl1.w2ent");                               
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_01_hd__bob_witcher_lvl2.w2ent");                               
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_01_hd__bob_witcher_lvl3.w2ent");                               
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_01_hd__bob_witcher_lvl4.w2ent");                               
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_01_hd__bob_witcher_lvl5.w2ent");                               
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_01_hd__bob_witcher_lvl6.w2ent");                               
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_01_hd__geralt_of_rivia.w2ent");                                
		saddleArray.PushBack("dlc\bob\data\items\horse_items\saddles\s_01_hd__ravix_of_fourhorn.w2ent");                              
		
	
	}
	
	function BlindersArrayInit(){
	
	blindersArray.PushBack("items\horse_items\champrons\c_01_hd__champron_lvl1.w2ent");
	blindersArray.PushBack("items\horse_items\champrons\c_02_hd__champron_lvl2.w2ent");
	blindersArray.PushBack("items\horse_items\champrons\c_03_hd__champron_lvl3.w2ent");
	blindersArray.PushBack("characters\models\animals\horse\wild_hunt\i_08_hw__wild_hunt.w2ent");
	blindersArray.PushBack("dlc\dlc1\data\horse_items\champrons\c_01_hd__champron_temerian.w2ent");
	blindersArray.PushBack("dlc\dlc5\data\horse_items\champrons\c_01_hd__champron_nilfgaard.w2ent");
	blindersArray.PushBack("dlc\dlc14\data\horse_items\champrons\c_01_hd__champron_skellige.w2ent");
	blindersArray.PushBack("dlc\ep1\data\items\horse_items\champrons\c_01_hd__ofir.w2ent");
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_01_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_02_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_03_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_04_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_05_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_06_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_07_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_08_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_09_hd__bob_cutscene.w2ent");                                 
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_09_hd__bob_knight.w2ent");                                  
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_10_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_11_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_12_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_13_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_14_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_15_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_16_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_17_hd__bob_knight.w2ent");                                   
	blindersArray.PushBack("dlc\bob\data\items\horse_items\champrons\c_18_hd__bob_knight.w2ent"); 
		
	}
	
	function ApplyBlinders(){
		var tempBlinders : CEntityTemplate;

		tempBlinders = CreateTemplate(blindersArray[blindersSelection]);
			if(blindersEnabled){
				blindersPrevTemp = HorseGearToogle(true,tempBlinders,blindersPrevTemp);
				hideBlinders = true;
			}
			else if(blindersEnabled == false){
				HorseGearToogle(false,tempBlinders,blindersPrevTemp);
			}
	}
	
	function HairsArrayInit(){
	
	hairsArray.PushBack("items\horse_items\hair\horse_hair_0.w2ent");
	hairsArray.PushBack("characters\models\animals\horse\draft\h_02_hd__simple.w2ent");
	hairsArray.PushBack("characters\models\animals\horse\draft\h_03_hd__simple.w2ent");
	hairsArray.PushBack("dlc\dlc5\data\horse_items\saddles\horse_hair_1_nilfgaardian.w2ent");
	hairsArray.PushBack("dlc\dlc14\data\horse_items\saddles\horse_hair_1_skellige.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_ruin.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_blond.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_1.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_2.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_3.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_4.w2ent"); 
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_5.w2ent"); 
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_6.w2ent"); 
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_7.w2ent"); 
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_8.w2ent"); 
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_9.w2ent");   
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_10.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_11.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_12.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_13.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_14.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_15.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_16.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_17.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_18.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_19.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_20.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_21.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_22.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_23.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_24.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_25.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_26.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_27.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_28.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_29.w2ent");
	hairsArray.PushBack("dlc\ammhorsedlc\data\horse\hair\horse_hair_30.w2ent");
	
	//Toussaint
	hairsArray.PushBack("dlc\bob\data\items\horse_items\hair\h_01_hd__bob_knight.w2ent");                                        
	hairsArray.PushBack("dlc\bob\data\items\horse_items\hair\h_02_hd__bob_knight.w2ent");                                        
	hairsArray.PushBack("dlc\bob\data\items\horse_items\hair\h_03_hd__bob_knight.w2ent");                                        
	hairsArray.PushBack("dlc\bob\data\items\horse_items\saddles\horse_hair_1_ep2.w2ent"); 
	
	hairsArray.PushBack("characters\models\animals\horse\draft\h_01_hd__simple.w2ent");
	hairsArray.PushBack("dlc\bob\data\characters\models\animals\nightmare\h_01_hd__horse_nightmare.w2ent");
	
	
	
		
	}
	
	function ApplyHairs(){
		var tempHairs : CEntityTemplate;

		tempHairs = CreateTemplate(hairsArray[hairsSelection]);
			if(hairsEnabled){
				hairsPrevTemp = HorseGearToogle(true,tempHairs,hairsPrevTemp);
				hideHair = true;
			}
			else if(hairsEnabled == false){
				HorseGearToogle(false,tempHairs,hairsPrevTemp);
			}
	}
	
	function TailsArrayInit(){
	
	tailsArray.PushBack("characters\models\animals\horse\draft\t_01_hd__brown.w2ent");
	tailsArray.PushBack("characters\models\animals\horse\draft\t_01_hd__hairy.w2ent");
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\tail_ruin.w2ent");
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\tail_blond.w2ent");
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\01_tail_black.w2ent");                                             
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\02_tail_white.w2ent");                                             
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\03_tail_silver.w2ent");                                            
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\04_tail_gray.w2ent");                                              
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\05_tail_gray_blue.w2ent");                                         
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\06_tail_blue.w2ent");                                              
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\07_tail_blue_light.w2ent");                                        
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\08_tail_blue_dark.w2ent");                                         
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\09_tail_green_light.w2ent");                                       
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\10_tail_turquoise.w2ent");                                         
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\11_tail_pink.w2ent");                                              
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\12_tail_purple.w2ent");                                            
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\13_tail_green.w2ent");                                             
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\14_tail_gold.w2ent");                                              
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\15_tail_brown.w2ent");                                             
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\16_tail_brown_light.w2ent");                                       
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\17_tail_flaxen.w2ent");                                            
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\18_tail_cream.w2ent");                                             
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\19_tail_red.w2ent");                                               
	tailsArray.PushBack("dlc\ammhorsedlc\data\horse\tail\20_tail_red_dark.w2ent");
	tailsArray.PushBack("dlc\bob\data\items\horse_items\bardings\t_01_hd__bob_knight.w2ent");                                    
	tailsArray.PushBack("dlc\bob\data\items\horse_items\bardings\t_02_hd__bob_knight.w2ent");
	tailsArray.PushBack("dlc\bob\data\characters\models\animals\unicorn\t_01__unicorn.w2ent");
	tailsArray.PushBack("dlc\bob\data\characters\models\animals\nightmare\t_01_hd__horse_nightmare.w2ent");
			
	}
	
	function ApplyTails(){
		var tempTails : CEntityTemplate;

		tempTails = CreateTemplate(tailsArray[tailsSelection]);
			if(tailsEnabled){
				tailsPrevTemp = HorseGearToogle(true,tempTails,tailsPrevTemp);
				hideTail = true;
			}
			else if(tailsEnabled == false){
				HorseGearToogle(false,tempTails,tailsPrevTemp);
			}
	}
	
	function ReinsArrayInit(){
	
	reinsArray.PushBack("items\horse_items\reins\horse_universal_reins.w2ent");
	reinsArray.PushBack("characters\models\animals\horse\draft\r_01_hd__skellige.w2ent");
		
	}
	
	function ApplyReins(){
		var tempReins : CEntityTemplate;

		tempReins = CreateTemplate(reinsArray[reinsSelection]);
			if(reinsEnabled){
				reinsPrevTemp = HorseGearToogle(true,tempReins,reinsPrevTemp);
				hideReins = true;
			}
			else if(reinsEnabled == false){
				HorseGearToogle(false,tempReins,reinsPrevTemp);
			}
	}
	
	function HarnessArrayInit(){
	
	harnessArray.PushBack("items\horse_items\saddles\s_01_hd__harness.w2ent");
	harnessArray.PushBack("characters\models\animals\horse\draft\s_01_hd__background_harness.w2ent");
		
	}
	
	function ApplyHarness(){
		var tempHarness : CEntityTemplate;

		tempHarness = CreateTemplate(harnessArray[harnessSelection]);
			if(harnessEnabled){
				harnessPrevTemp = HorseGearToogle(true,tempHarness,harnessPrevTemp);
				hideHarness = true;
			}
			else if(harnessEnabled == false){
				HorseGearToogle(false,tempHarness,harnessPrevTemp);
			}
	}
	
	function BagsArrayInit(){
	
	bagsArray.PushBack("items\horse_items\bags\i_01_hd__bags_lvl1.w2ent");
	bagsArray.PushBack("items\horse_items\bags\i_01_hd__bags_lvl2.w2ent");
	bagsArray.PushBack("items\horse_items\bags\i_01_hd__bags_lvl3.w2ent");
	bagsArray.PushBack("dlc\dlc1\data\horse_items\bags\i_01_hd__bags_temerian.w2ent");
	bagsArray.PushBack("dlc\dlc5\data\horse_items\bags\i_01_hd__bags_nilfgaard.w2ent");
	bagsArray.PushBack("dlc\dlc14\data\horse_items\bags\i_01_hd__bags_skellige.w2ent");
	bagsArray.PushBack("dlc\ep1\data\items\horse_items\bags\i_01_hd__ofir.w2ent");
	bagsArray.PushBack("dlc\bob\data\items\horse_items\bags\i_01_hd__toussaint.w2ent");
		
	}
	
	function ApplyBags(){
		var tempBags : CEntityTemplate;

		tempBags = CreateTemplate(bagsArray[bagsSelection]);
			if(bagsEnabled){
				bagsPrevTemp = HorseGearToogle(true,tempBags,bagsPrevTemp);
				hideBags = true;
			}
			else if(bagsEnabled == false){
				HorseGearToogle(false,tempBags,bagsPrevTemp);
			}
	}
	
	function AccArrayInit(){
	
	
	accArray.PushBack("characters\models\animals\horse\draft\i_01_hd__horsecart.w2ent");
	accArray.PushBack("characters\models\animals\horse\draft\i_05_hd__novigrad.w2ent");
	accArray.PushBack("characters\models\animals\horse\draft\i_06_hd__novigrad.w2ent");
	accArray.PushBack("characters\models\animals\horse\draft\i_08_hd__novigrad.w2ent");
	accArray.PushBack("characters\models\animals\horse\draft\i_09_hd__novigrad.w2ent");
	accArray.PushBack("characters\models\animals\horse\draft\i_10_hd__novigrad.w2ent");
	accArray.PushBack("characters\models\animals\horse\wild_hunt\i_09_hw__wild_hunt.w2ent");
	accArray.PushBack("characters\models\animals\horse\draft\p_01_hd__novigrad.w2ent");
	accArray.PushBack("characters\models\animals\horse\draft\p_02_hd__novigrad.w2ent");
	accArray.PushBack("characters\models\animals\horse\draft\p_03_hd__novigrad.w2ent");
	accArray.PushBack("dlc\bob\data\characters\models\animals\unicorn\i_01__unicorn.w2ent");
	accArray.PushBack("dlc\bob\data\characters\models\animals\unicorn\i_02__unicorn.w2ent");
	
		
	}
	
	function ApplyAcc(){
		var tempAcc1 : CEntityTemplate;
		var tempAcc2 : CEntityTemplate;
		var tempAcc3 : CEntityTemplate;
		var tempAcc4 : CEntityTemplate;
		var tempAcc5 : CEntityTemplate;

		tempAcc1 = CreateTemplate(accArray[acc1Selection]);
			if(acc1Enabled){
				acc1PrevTemp = HorseGearToogle(true,tempAcc1,acc1PrevTemp);
			}
			else if(acc1Enabled == false){
				HorseGearToogle(false,tempAcc1,acc1PrevTemp);
			}
			
		tempAcc2 = CreateTemplate(accArray[acc2Selection]);
			if(acc2Enabled){
				acc2PrevTemp = HorseGearToogle(true,tempAcc2,acc2PrevTemp);
			}
			else if(acc2Enabled == false){
				HorseGearToogle(false,tempAcc2,acc2PrevTemp);
			}
		
		tempAcc3 = CreateTemplate(accArray[acc3Selection]);
			if(acc3Enabled){
				acc3PrevTemp = HorseGearToogle(true,tempAcc3,acc3PrevTemp);
			}
			else if(acc3Enabled == false){
				HorseGearToogle(false,tempAcc3,acc3PrevTemp);
			}
		
		tempAcc4 = CreateTemplate(accArray[acc4Selection]);
			if(acc4Enabled){
				acc4PrevTemp = HorseGearToogle(true,tempAcc4,acc4PrevTemp);
			}
			else if(acc4Enabled == false){
				HorseGearToogle(false,tempAcc4,acc4PrevTemp);
			}
			
		tempAcc5 = CreateTemplate(accArray[acc5Selection]);
			if(acc5Enabled){
				acc5PrevTemp = HorseGearToogle(true,tempAcc5,acc5PrevTemp);
			}
			else if(acc5Enabled == false){
				HorseGearToogle(false,tempAcc5,acc5PrevTemp);
			}
	}
	
	function TrophiesArrayInit(){
	
	trophiesArray.PushBack("items\horse_items\trophies\trophy__universal_clean.w2ent");
	trophiesArray.PushBack("items\horse_items\trophies\trophy__universal.w2ent"); 
	trophiesArray.PushBack("items\horse_items\trophies\trophy__bies.w2ent");                                                                    
	trophiesArray.PushBack("items\horse_items\trophies\trophy__cave_troll.w2ent");                                                              
	trophiesArray.PushBack("items\horse_items\trophies\trophy__cockatris.w2ent");                                                               
	trophiesArray.PushBack("items\horse_items\trophies\trophy__czart.w2ent");                                                                   
	trophiesArray.PushBack("items\horse_items\trophies\trophy__ekima.w2ent");                                                                   
	trophiesArray.PushBack("items\horse_items\trophies\trophy__forktail.w2ent");                                                                
	trophiesArray.PushBack("items\horse_items\trophies\trophy__gryphon.w2ent");                                                                 
	trophiesArray.PushBack("items\horse_items\trophies\trophy__gryphon_mh.w2ent");                                                              
	trophiesArray.PushBack("items\horse_items\trophies\trophy__katakan.w2ent");                                                                 
	trophiesArray.PushBack("items\horse_items\trophies\trophy__lessun.w2ent");	                                                         
	trophiesArray.PushBack("items\horse_items\trophies\trophy__wyvern.w2ent");
	trophiesArray.PushBack("dlc\ep1\data\items\horse_items\trophies\trophy_pig.w2ent");
	trophiesArray.PushBack("dlc\ep1\data\items\horse_items\trophies\trophy_sharley.w2ent");
		
	}
	
	function ApplyTrophies(){
		var tempTrophies : CEntityTemplate;

		tempTrophies = CreateTemplate(trophiesArray[trophiesSelection]);
			if(trophiesEnabled){
				trophiesPrevTemp = HorseGearToogle(true,tempTrophies,trophiesPrevTemp);
				hideTrophy = true;
			}
			else if(trophiesEnabled == false){
				HorseGearToogle(false,tempTrophies,trophiesPrevTemp);
			}
	}
	
	function HorseArrayInit(){

		horseArray.PushBack('player_horse');
		horseArray.PushBack('amm_light_brown');
		horseArray.PushBack('player_horse_after_q110');
		horseArray.PushBack('player_horse_with_devil_saddle');
		horseArray.PushBack('amm_white_race');	
		horseArray.PushBack('amm_wild');
		horseArray.PushBack('amm_wh');
		horseArray.PushBack('amm_zombie');
		horseArray.PushBack('amm_fera_ruin');
		horseArray.PushBack('bay');
		horseArray.PushBack('bay_chestnut');
		horseArray.PushBack('bay_dun');
		horseArray.PushBack('bay_sabino');
		horseArray.PushBack('bay_kiger');
		horseArray.PushBack('black');
		horseArray.PushBack('black_n_white');
		horseArray.PushBack('liver_chestnut');
		horseArray.PushBack('buckskin');
		horseArray.PushBack('buckskin_sooty');
		horseArray.PushBack('cream');
		horseArray.PushBack('cremello');
		horseArray.PushBack('gold_akhal_teke');
		horseArray.PushBack('silver_akhal_teke');
		horseArray.PushBack('gray');
		horseArray.PushBack('gray_dark');
		horseArray.PushBack('grulla');
		horseArray.PushBack('halflinger');
		horseArray.PushBack('roan_blue');
		horseArray.PushBack('roan_chocolate');
		horseArray.PushBack('roan_red');
		horseArray.PushBack('roan_strawberry');
		horseArray.PushBack('sorrel');
		horseArray.PushBack('white');
		horseArray.PushBack('dapple1');
		horseArray.PushBack('dapple2');
		horseArray.PushBack('dapple3');
		horseArray.PushBack('dapple4');
		horseArray.PushBack('dapple5');
		horseArray.PushBack('dapple6');
		horseArray.PushBack('dapple7');
		horseArray.PushBack('dapple8');
		horseArray.PushBack('dapple9');
		
		horseArray.PushBack('pinto_black');
		horseArray.PushBack('pinto_buckskin');
		horseArray.PushBack('pinto_darkbrown');
		horseArray.PushBack('pinto_gray');
		horseArray.PushBack('pinto_lightbrown');
		
		horseArray.PushBack('unicorn_wild_01');
		horseArray.PushBack('unicorn_wild_02');
		horseArray.PushBack('nightmare');
	
	}
	
	function changehorse(enabled : bool, optional ammhorse : name) : bool{

		var horse			: CNewNPC;
		var horseap : name;

		horse = thePlayer.GetHorseWithInventory();

		if( !horse )
				{
					return false;
				}
				
		if( FactsQuerySum( "q110_geralt_refused_pay" ) > 0 ) // change horse appearance if player received new horse through storyline
				{
					horseap = 'player_horse_after_q110';
				}
				else{
					horseap = 'player_horse';
				}

		if ( enabled ){horse.ApplyAppearance(ammhorse);}else{horse.ApplyAppearance( horseap );}
		
		return true;
	}
	
	function DevilFXToggle(enabled : bool){
		var horse			: CNewNPC;
		
		horse = thePlayer.GetHorseWithInventory();
		
		if ( enabled ){horse.PlayEffectSingle('demon_horse');}else{horse.StopEffect('demon_horse');}
		
	}
		
	function IceFXToggle(enabled : bool){
		var horse			: CNewNPC;
		
		horse = thePlayer.GetHorseWithInventory();
		
		if ( enabled ){
				
				horse.PlayEffectSingle('ice_armor_cutscene');
				
		}
		else{
				
				horse.StopEffect('ice_armor_cutscene');
		}
	}
	
	function RuinFXToggle(enabled : bool){
		var horse			: CNewNPC;
		
		horse = thePlayer.GetHorseWithInventory();
		
		if ( enabled ){
		
				horse.PlayEffectSingle('fire_hooves_right_front');
				horse.PlayEffectSingle('fire_hooves_left_front');
				horse.PlayEffectSingle('fire_hooves_right_back');
				horse.PlayEffectSingle('fire_hooves_left_back');
				
		}
		else
		{
		
				horse.StopEffect('fire_hooves_right_front');
				horse.StopEffect('fire_hooves_left_front');
				horse.StopEffect('fire_hooves_right_back');
				horse.StopEffect('fire_hooves_left_back');			
			
		}
	}

	
	function HideParts(){
		var horse			: CNewNPC;
		var horseInv 		: CInventoryComponent;
		var ids : array<SItemUniqueId>;
		var ent : CEntity;
		var size , i : int;
			
		
		horse = thePlayer.GetHorseWithInventory();
		
		horseInv = horse.GetInventory();
		horseInv.GetAllItems(ids);

		size = ids.Size();
		
			for(i = 0;i < size;i += 1){
				
				if ( horseInv.ItemHasTag(ids[i], 'Saddle')  ){	
					ent = horseInv.GetItemEntityUnsafe(ids[i]);
					if(hideSaddle){ent.SetHideInGame(true);}else{ent.SetHideInGame(false);}
					
				}
				
				if ( horseInv.ItemHasTag(ids[i], 'HorseBag')  ){	
					ent = horseInv.GetItemEntityUnsafe(ids[i]);
					if(hideBags){ent.SetHideInGame(true);}else{ent.SetHideInGame(false);}
					
				}
				
				if ( horseInv.ItemHasTag(ids[i], 'Blinders')  ){	
					ent = horseInv.GetItemEntityUnsafe(ids[i]);
					if(hideBlinders){ent.SetHideInGame(true);}else{ent.SetHideInGame(false);}
					
				}
				
				if ( horseInv.ItemHasTag(ids[i], 'HorseTail')  ){	
					ent = horseInv.GetItemEntityUnsafe(ids[i]);
					if(hideTail){ent.SetHideInGame(true);}else{ent.SetHideInGame(false);}
					
				}
				
				if ( horseInv.ItemHasTag(ids[i], 'Trophy')  ){	
					ent = horseInv.GetItemEntityUnsafe(ids[i]);
					if(hideTrophy){ent.SetHideInGame(true);}else{ent.SetHideInGame(false);}
					
				}
				
				if ( horseInv.ItemHasTag(ids[i], 'HorseReins')  ){	
					ent = horseInv.GetItemEntityUnsafe(ids[i]);
					if(hideReins){ent.SetHideInGame(true);}else{ent.SetHideInGame(false);}
					
				}
								
			}
			
			ids.Clear();
			ids = horseInv.GetItemsByCategory('horse_hair');
			size = ids.Size();
	
			for(i = 0;i < size;i += 1){
		
				ent = horseInv.GetItemEntityUnsafe(ids[i]);
				if(hideHair){ent.SetHideInGame(true);}else{ent.SetHideInGame(false);}
			}
			
			ids.Clear();
			ids = horseInv.GetItemsByCategory('horse_harness');
			size = ids.Size();
	
			for(i = 0;i < size;i += 1){
		
				ent = horseInv.GetItemEntityUnsafe(ids[i]);
				if(hideHarness){ent.SetHideInGame(true);}else{ent.SetHideInGame(false);}
			}
		
	}

function ToxArrayInit(){

		toxArray.PushBack('toxic_000_025');
		toxArray.PushBack('toxic_025_000');
		toxArray.PushBack('toxic_025_050');
		toxArray.PushBack('toxic_050_025');
		toxArray.PushBack('toxic_050_075');
		toxArray.PushBack('toxic_075_050');
		toxArray.PushBack('toxic_075_100');
		toxArray.PushBack('toxic_100_075');

	}

function ToxToggle(){
	
		var inv : CInventoryComponent;
		var headIds : array<SItemUniqueId>;
		var headId : SItemUniqueId;
		var head : CItemEntity;
		var i, size: int;
		
		inv = thePlayer.GetInventory();
		headIds = inv.GetItemsByCategory('head');
		
		size = headIds.Size();
		
		for ( i = 0; i < size; i+=1 ){
						
			if ( !inv.IsItemMounted( headIds[i] ) )
			{
				continue;
			}
			
			headId = headIds[i];
					
			head = inv.GetItemEntityUnsafe( headId );
			//theGame.GetGuiManager().ShowNotification((string)head);

			
			if ( toxEnabled )
			{
				head.PlayEffectSingle( toxArray[toxSelection] );
				//theGame.GetGuiManager().ShowNotification(toxEnabled + ":" + (string)toxArray[toxSelection]);
				
			}
			else
			{
				HeadToogle(false);
				/*SetHead();
				head.StopEffect( 'toxic_000_025' );
				head.StopEffect( 'toxic_025_000' );
				head.StopEffect( 'toxic_025_050' );
				head.StopEffect( 'toxic_050_025' );
				head.StopEffect( 'toxic_050_075' );
				head.StopEffect( 'toxic_075_050' );
				head.StopEffect( 'toxic_075_100' );
				head.StopEffect( 'toxic_100_075' );*/
			}
		}
	}
	
event OnSelectFavsUp(action : SInputAction){
   
        if(IsPressed(action)){
       
            favouriteSelection += 1;
            if(favouriteSelection >= 6)
            {
                favouriteSelection = 0;
            }
           
            switch(favouriteSelection)
            {
                case 0:
                    theGame.GetGuiManager().ShowNotification("Selected Favourite 1");
                    break;
                case 1:
                    theGame.GetGuiManager().ShowNotification("Selected Favourite 2");
                    break;
                case 2:
                    theGame.GetGuiManager().ShowNotification("Selected Favourite 3");
                    break;
				case 3:
					theGame.GetGuiManager().ShowNotification("Selected Favourite 4");
                    break;
				case 4:
					theGame.GetGuiManager().ShowNotification("Selected Favourite 5");
                    break;
				case 5:
					theGame.GetGuiManager().ShowNotification("Selected Favourite 6");
                    break;
            }          
        }
    }
	
	event OnSelectFavsDown(action : SInputAction){
   
        if(IsPressed(action)){
       
            favouriteSelection -= 1;
            if(favouriteSelection < 0)
            {
                favouriteSelection = 5;
            }
           
            switch(favouriteSelection)
            {
                case 0:
                    theGame.GetGuiManager().ShowNotification("Selected Favourite 1");
                    break;
                case 1:
                    theGame.GetGuiManager().ShowNotification("Selected Favourite 2");
                    break;
                case 2:
                    theGame.GetGuiManager().ShowNotification("Selected Favourite 3");
                    break;
				case 3:
					theGame.GetGuiManager().ShowNotification("Selected Favourite 4");
                    break;
				case 4:
					theGame.GetGuiManager().ShowNotification("Selected Favourite 5");
                    break;
				case 5:
					theGame.GetGuiManager().ShowNotification("Selected Favourite 6");
                    break;
            }          
        }
    }
   
event OnSaveFavourite(action : SInputAction){
   
        if(IsPressed(action)){
           
            switch(favouriteSelection)
            {
                case 0:
                    OnSetFavourite1();
                    theGame.GetGuiManager().ShowNotification("Saved Favourite 1");
                    break;
                case 1:
                    OnSetFavourite2();
                    theGame.GetGuiManager().ShowNotification("Saved Favourite 2");
                    break;
                case 2:
                    OnSetFavourite3();
                    theGame.GetGuiManager().ShowNotification("Saved Favourite 3");
                    break;
				case 3:
                    OnSetFavourite4();
                    theGame.GetGuiManager().ShowNotification("Saved Favourite 4");
                    break;
				case 4:
                    OnSetFavourite5();
                    theGame.GetGuiManager().ShowNotification("Saved Favourite 5");
                    break;
				case 5:
                    OnSetFavourite6();
                    theGame.GetGuiManager().ShowNotification("Saved Favourite 6");
                    break;
            }      
       
        }
    }
   
event OnLoadFavourite(action : SInputAction){
   
        if(IsPressed(action)){
           
            switch(favouriteSelection)
            {
                case 0:
                    OnGetFavourite1();
                    theGame.GetGuiManager().ShowNotification("Loaded Favourite 1");
                    break;
                case 1:
                    OnGetFavourite2();
                    theGame.GetGuiManager().ShowNotification("Loaded Favourite 2");
                    break;
                case 2:
                    OnGetFavourite3();
                    theGame.GetGuiManager().ShowNotification("Loaded Favourite 3");
                    break;
				case 3:
                    OnGetFavourite4();
                    theGame.GetGuiManager().ShowNotification("Loaded Favourite 4");
                    break;
                case 4:
                    OnGetFavourite5();
                    theGame.GetGuiManager().ShowNotification("Loaded Favourite 5");
                    break;
                case 5:
                    OnGetFavourite6();
                    theGame.GetGuiManager().ShowNotification("Loaded Favourite 6");
                    break;
            }
       
        }
    }
 
function OnSetFavourite1 (){
        //Toggles                  
                inGameConfigWrapper.SetVarValue('Hidden', 'BodyEnabledF1', inGameConfigWrapper.GetVarValue('AMM', 'BodyEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadEnabledF1', inGameConfigWrapper.GetVarValue('AMM', 'HeadEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'StswEnabledF1',inGameConfigWrapper.GetVarValue('AMM', 'StswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvswEnabledF1',inGameConfigWrapper.GetVarValue('AMM', 'SvswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CrossbowEnabledF1',inGameConfigWrapper.GetVarValue('AMM', 'CrossbowEnabled'));              
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxEnabledF1',inGameConfigWrapper.GetVarValue('AMMHead', 'ToxEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableMarkF1', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableMark'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableTattooF1', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableTattoo'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'HairEnabledF1',inGameConfigWrapper.GetVarValue('AMMHead', 'HairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairEnabledF1',inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardRefreshEnabledF1', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardRefreshEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearEnabledF1', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearEnabledF1', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearEnabled')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeEnabledF1', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearEnabledF1', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsEnabledF1', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearEnabledF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearEnabledF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearEnabledF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearEnabledF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearEnabledF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearEnabledF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearEnabledF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearEnabledF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearEnabledF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearEnabledF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ChestEnabledF1', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesEnabledF1', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsEnabledF1', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsEnabledF1', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsEnabled'));               
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestEnabledF1', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesEnabledF1', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsEnabledF1', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsEnabledF1', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsEnabled'));            
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodyEnabledF1', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodyEnabled'));                               
                inGameConfigWrapper.SetVarValue('Hidden', 'BanditMaskEnabledF1', inGameConfigWrapper.GetVarValue('AMMHead', 'BanditMaskEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'HideSvscabF1', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'HideSvscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabEnabledF1', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordEnabledF1', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HideStscabF1', inGameConfigWrapper.GetVarValue('AMMStSwords', 'HideStscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabEnabledF1', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabEnabled'));             
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordEnabledF1', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordEnabled'));
			   
            //Selections
                inGameConfigWrapper.SetVarValue('Hidden', 'HairSelectionF1', inGameConfigWrapper.GetVarValue('AMMHead', 'HairSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairSelectionF1', inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardSelectionF1', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearSelectionF1', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearSelectionF1', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeSelectionF1', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeSelection'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearSelectionF1', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsSelectionF1', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearSelectionF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearSelectionF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearSelectionF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearSelectionF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearSelectionF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearSelectionF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearSelectionF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearSelectionF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearSelectionF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearSelectionF1', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'ChestSelectionF1', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsSelectionF1', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesSelectionF1', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsSelectionF1', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsSelection'));         
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestSelectionF1', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsSelectionF1', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesSelectionF1', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsSelectionF1', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodySelectionF1', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodySelection'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabSelectionF1', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabSelectionF1', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabSelection'));
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordSelectionF1', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordSelectionF1', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxSelectionF1', inGameConfigWrapper.GetVarValue('AMMHead', 'ToxSelection'));
				
			//Roach
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseEnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseEnabled'));				
                inGameConfigWrapper.SetVarValue('Hidden', 'HorseSelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'HideSaddleF1', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideSaddle')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBagsF1', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBags')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideReinsF1', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideReins')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHarnessF1', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHarness')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBlindersF1', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBlinders'));
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTailF1', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTail')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHairF1', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHair')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTrophyF1', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTrophy')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseFXEnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachFX', 'HorseFXEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleEnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleSelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersEnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersSelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsEnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsSelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsEnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsSelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsEnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsSelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesEnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesSelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsEnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsSelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessEnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessSelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1EnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1SelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2EnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2SelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3EnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3SelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4EnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4SelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5EnabledF1', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Enabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5SelectionF1', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Selection')); 	                  
    }
	
   
function OnGetFavourite1 (){
               
                inGameConfigWrapper.SetVarValue('AMM', 'BodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BodyEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMM', 'HeadEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadEnabledF1'));             
                inGameConfigWrapper.SetVarValue('AMM', 'StswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'StswEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMM', 'SvswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'SvswEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMM', 'CrossbowEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'CrossbowEnabledF1'));              
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'ToxEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableMark', inGameConfigWrapper.GetVarValue('Hidden', 'EnableMarkF1'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableTattoo', inGameConfigWrapper.GetVarValue('Hidden', 'EnableTattooF1'));   
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'HairEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'AltHairEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardRefreshEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BeardRefreshEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearEnabledF1')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CapeEnabledF1'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsEnabledF1'));             
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearEnabledF1'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearEnabledF1'));           
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ChestEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'LegsEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BootsEnabledF1'));               
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CChestEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsEnabledF1'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsEnabledF1'));            
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodyEnabledF1'));                               
                inGameConfigWrapper.SetVarValue('AMMHead', 'BanditMaskEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BanditMaskEnabledF1'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'HideSvscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideSvscabF1'));
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabEnabledF1'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordEnabledF1'));  
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'HideStscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideStscabF1'));
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StscabEnabledF1'));             
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordEnabledF1')); 
			   
            //Selections
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairSelectionF1'));     
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'AltHairSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BeardSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearSelectionF1')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CapeSelectionF1'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsSelectionF1'));     
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearSelectionF1'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearSelectionF1'));				
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ChestSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BootsSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'LegsSelectionF1'));         
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CChestSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesSelectionF1'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsSelectionF1'));  
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodySelection', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodySelectionF1'));   
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StscabSelectionF1')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabSelectionF1'));
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordSelectionF1')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordSelectionF1'));				
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ToxSelectionF1'));
				
				
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseEnabledF1'));				
                inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HorseSelectionF1')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideSaddle', inGameConfigWrapper.GetVarValue('Hidden', 'HideSaddleF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBags', inGameConfigWrapper.GetVarValue('Hidden', 'HideBagsF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideReins', inGameConfigWrapper.GetVarValue('Hidden', 'HideReinsF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHarness', inGameConfigWrapper.GetVarValue('Hidden', 'HideHarnessF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBlinders', inGameConfigWrapper.GetVarValue('Hidden', 'HideBlindersF1'));
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTail', inGameConfigWrapper.GetVarValue('Hidden', 'HideTailF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHair', inGameConfigWrapper.GetVarValue('Hidden', 'HideHairF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTrophy', inGameConfigWrapper.GetVarValue('Hidden', 'HideTrophyF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachFX', 'HorseFXEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseFXEnabledF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleEnabledF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleSelectionF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersEnabledF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersSelectionF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HairsEnabledF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairsSelectionF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TailsEnabledF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TailsSelectionF1')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BagsEnabledF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BagsSelectionF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesEnabledF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesSelectionF1')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsEnabledF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsSelectionF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessEnabledF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessSelectionF1')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1EnabledF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1SelectionF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2EnabledF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2SelectionF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3EnabledF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3SelectionF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4EnabledF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4SelectionF1')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5EnabledF1')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5SelectionF1')); 	
 
                RefreshAppearance();
				RefreshRoach();
    }  


function OnSetFavourite2 (){
        //Toggles                  
                inGameConfigWrapper.SetVarValue('Hidden', 'BodyEnabledF2', inGameConfigWrapper.GetVarValue('AMM', 'BodyEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadEnabledF2', inGameConfigWrapper.GetVarValue('AMM', 'HeadEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'StswEnabledF2',inGameConfigWrapper.GetVarValue('AMM', 'StswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvswEnabledF2',inGameConfigWrapper.GetVarValue('AMM', 'SvswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CrossbowEnabledF2',inGameConfigWrapper.GetVarValue('AMM', 'CrossbowEnabled'));              
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxEnabledF2',inGameConfigWrapper.GetVarValue('AMMHead', 'ToxEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableMarkF2', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableMark'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableTattooF2', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableTattoo'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'HairEnabledF2',inGameConfigWrapper.GetVarValue('AMMHead', 'HairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairEnabledF2',inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardRefreshEnabledF2', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardRefreshEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearEnabledF2', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearEnabledF2', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearEnabled')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeEnabledF2', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearEnabledF2', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsEnabledF2', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearEnabledF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearEnabledF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearEnabledF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearEnabledF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearEnabledF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearEnabledF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearEnabledF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearEnabledF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearEnabledF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearEnabledF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ChestEnabledF2', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesEnabledF2', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsEnabledF2', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsEnabledF2', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsEnabled'));               
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestEnabledF2', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesEnabledF2', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsEnabledF2', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsEnabledF2', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsEnabled'));            
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodyEnabledF2', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodyEnabled'));                               
                inGameConfigWrapper.SetVarValue('Hidden', 'BanditMaskEnabledF2', inGameConfigWrapper.GetVarValue('AMMHead', 'BanditMaskEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'HideSvscabF2', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'HideSvscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabEnabledF2', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordEnabledF2', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HideStscabF2', inGameConfigWrapper.GetVarValue('AMMStSwords', 'HideStscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabEnabledF2', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabEnabled'));             
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordEnabledF2', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordEnabled'));
			   
            //Selections
                inGameConfigWrapper.SetVarValue('Hidden', 'HairSelectionF2', inGameConfigWrapper.GetVarValue('AMMHead', 'HairSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairSelectionF2', inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardSelectionF2', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearSelectionF2', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearSelectionF2', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeSelectionF2', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeSelection'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearSelectionF2', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsSelectionF2', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearSelectionF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearSelectionF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearSelectionF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearSelectionF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearSelectionF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearSelectionF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearSelectionF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearSelectionF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearSelectionF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearSelectionF2', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'ChestSelectionF2', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsSelectionF2', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesSelectionF2', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsSelectionF2', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsSelection'));         
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestSelectionF2', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsSelectionF2', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesSelectionF2', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsSelectionF2', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodySelectionF2', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodySelection'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabSelectionF2', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabSelectionF2', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabSelection'));
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordSelectionF2', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordSelectionF2', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxSelectionF2', inGameConfigWrapper.GetVarValue('AMMHead', 'ToxSelection'));
				
			//Roach
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseEnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseEnabled'));				
                inGameConfigWrapper.SetVarValue('Hidden', 'HorseSelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'HideSaddleF2', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideSaddle')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBagsF2', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBags')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideReinsF2', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideReins')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHarnessF2', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHarness')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBlindersF2', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBlinders'));
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTailF2', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTail')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHairF2', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHair')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTrophyF2', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTrophy')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseFXEnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachFX', 'HorseFXEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleEnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleSelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersEnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersSelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsEnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsSelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsEnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsSelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsEnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsSelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesEnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesSelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsEnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsSelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessEnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessSelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1EnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1SelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2EnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2SelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3EnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3SelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4EnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4SelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5EnabledF2', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Enabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5SelectionF2', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Selection')); 	                  
    }
	
   
function OnGetFavourite2 (){
               
                inGameConfigWrapper.SetVarValue('AMM', 'BodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BodyEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMM', 'HeadEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadEnabledF2'));             
                inGameConfigWrapper.SetVarValue('AMM', 'StswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'StswEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMM', 'SvswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'SvswEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMM', 'CrossbowEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'CrossbowEnabledF2'));              
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'ToxEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableMark', inGameConfigWrapper.GetVarValue('Hidden', 'EnableMarkF2'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableTattoo', inGameConfigWrapper.GetVarValue('Hidden', 'EnableTattooF2'));   
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'HairEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'AltHairEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardRefreshEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BeardRefreshEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearEnabledF2')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CapeEnabledF2'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsEnabledF2'));             
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearEnabledF2'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearEnabledF2'));           
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ChestEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'LegsEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BootsEnabledF2'));               
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CChestEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsEnabledF2'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsEnabledF2'));            
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodyEnabledF2'));                               
                inGameConfigWrapper.SetVarValue('AMMHead', 'BanditMaskEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BanditMaskEnabledF2'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'HideSvscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideSvscabF2'));
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabEnabledF2'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordEnabledF2'));  
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'HideStscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideStscabF2'));
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StscabEnabledF2'));             
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordEnabledF2')); 
			   
            //Selections
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairSelectionF2'));     
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'AltHairSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BeardSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearSelectionF2')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CapeSelectionF2'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsSelectionF2'));     
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearSelectionF2'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearSelectionF2'));				
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ChestSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BootsSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'LegsSelectionF2'));         
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CChestSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesSelectionF2'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsSelectionF2'));  
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodySelection', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodySelectionF2'));   
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StscabSelectionF2')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabSelectionF2'));
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordSelectionF2')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordSelectionF2'));				
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ToxSelectionF2'));
				
				
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseEnabledF2'));				
                inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HorseSelectionF2')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideSaddle', inGameConfigWrapper.GetVarValue('Hidden', 'HideSaddleF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBags', inGameConfigWrapper.GetVarValue('Hidden', 'HideBagsF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideReins', inGameConfigWrapper.GetVarValue('Hidden', 'HideReinsF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHarness', inGameConfigWrapper.GetVarValue('Hidden', 'HideHarnessF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBlinders', inGameConfigWrapper.GetVarValue('Hidden', 'HideBlindersF2'));
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTail', inGameConfigWrapper.GetVarValue('Hidden', 'HideTailF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHair', inGameConfigWrapper.GetVarValue('Hidden', 'HideHairF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTrophy', inGameConfigWrapper.GetVarValue('Hidden', 'HideTrophyF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachFX', 'HorseFXEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseFXEnabledF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleEnabledF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleSelectionF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersEnabledF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersSelectionF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HairsEnabledF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairsSelectionF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TailsEnabledF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TailsSelectionF2')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BagsEnabledF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BagsSelectionF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesEnabledF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesSelectionF2')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsEnabledF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsSelectionF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessEnabledF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessSelectionF2')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1EnabledF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1SelectionF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2EnabledF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2SelectionF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3EnabledF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3SelectionF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4EnabledF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4SelectionF2')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5EnabledF2')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5SelectionF2')); 	
 
                RefreshAppearance();
				RefreshRoach();
    }   


function OnSetFavourite3 (){
        //Toggles                  
                inGameConfigWrapper.SetVarValue('Hidden', 'BodyEnabledF3', inGameConfigWrapper.GetVarValue('AMM', 'BodyEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadEnabledF3', inGameConfigWrapper.GetVarValue('AMM', 'HeadEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'StswEnabledF3',inGameConfigWrapper.GetVarValue('AMM', 'StswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvswEnabledF3',inGameConfigWrapper.GetVarValue('AMM', 'SvswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CrossbowEnabledF3',inGameConfigWrapper.GetVarValue('AMM', 'CrossbowEnabled'));              
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxEnabledF3',inGameConfigWrapper.GetVarValue('AMMHead', 'ToxEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableMarkF3', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableMark'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableTattooF3', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableTattoo'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'HairEnabledF3',inGameConfigWrapper.GetVarValue('AMMHead', 'HairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairEnabledF3',inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardRefreshEnabledF3', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardRefreshEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearEnabledF3', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearEnabledF3', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearEnabled')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeEnabledF3', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearEnabledF3', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsEnabledF3', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearEnabledF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearEnabledF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearEnabledF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearEnabledF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearEnabledF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearEnabledF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearEnabledF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearEnabledF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearEnabledF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearEnabledF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ChestEnabledF3', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesEnabledF3', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsEnabledF3', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsEnabledF3', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsEnabled'));               
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestEnabledF3', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesEnabledF3', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsEnabledF3', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsEnabledF3', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsEnabled'));            
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodyEnabledF3', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodyEnabled'));                               
                inGameConfigWrapper.SetVarValue('Hidden', 'BanditMaskEnabledF3', inGameConfigWrapper.GetVarValue('AMMHead', 'BanditMaskEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'HideSvscabF3', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'HideSvscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabEnabledF3', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordEnabledF3', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HideStscabF3', inGameConfigWrapper.GetVarValue('AMMStSwords', 'HideStscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabEnabledF3', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabEnabled'));             
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordEnabledF3', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordEnabled'));
			   
            //Selections
                inGameConfigWrapper.SetVarValue('Hidden', 'HairSelectionF3', inGameConfigWrapper.GetVarValue('AMMHead', 'HairSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairSelectionF3', inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardSelectionF3', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearSelectionF3', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearSelectionF3', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeSelectionF3', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeSelection'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearSelectionF3', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsSelectionF3', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearSelectionF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearSelectionF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearSelectionF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearSelectionF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearSelectionF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearSelectionF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearSelectionF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearSelectionF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearSelectionF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearSelectionF3', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'ChestSelectionF3', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsSelectionF3', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesSelectionF3', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsSelectionF3', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsSelection'));         
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestSelectionF3', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsSelectionF3', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesSelectionF3', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsSelectionF3', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodySelectionF3', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodySelection'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabSelectionF3', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabSelectionF3', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabSelection'));
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordSelectionF3', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordSelectionF3', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxSelectionF3', inGameConfigWrapper.GetVarValue('AMMHead', 'ToxSelection'));
				
			//Roach
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseEnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseEnabled'));				
                inGameConfigWrapper.SetVarValue('Hidden', 'HorseSelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'HideSaddleF3', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideSaddle')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBagsF3', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBags')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideReinsF3', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideReins')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHarnessF3', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHarness')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBlindersF3', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBlinders'));
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTailF3', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTail')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHairF3', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHair')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTrophyF3', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTrophy')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseFXEnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachFX', 'HorseFXEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleEnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleSelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersEnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersSelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsEnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsSelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsEnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsSelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsEnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsSelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesEnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesSelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsEnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsSelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessEnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessSelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1EnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1SelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2EnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2SelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3EnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3SelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4EnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4SelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5EnabledF3', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Enabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5SelectionF3', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Selection')); 	                  
    }
	
   
function OnGetFavourite3 (){
               
                inGameConfigWrapper.SetVarValue('AMM', 'BodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BodyEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMM', 'HeadEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadEnabledF3'));             
                inGameConfigWrapper.SetVarValue('AMM', 'StswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'StswEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMM', 'SvswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'SvswEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMM', 'CrossbowEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'CrossbowEnabledF3'));              
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'ToxEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableMark', inGameConfigWrapper.GetVarValue('Hidden', 'EnableMarkF3'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableTattoo', inGameConfigWrapper.GetVarValue('Hidden', 'EnableTattooF3'));   
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'HairEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'AltHairEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardRefreshEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BeardRefreshEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearEnabledF3')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CapeEnabledF3'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsEnabledF3'));             
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearEnabledF3'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearEnabledF3'));           
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ChestEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'LegsEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BootsEnabledF3'));               
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CChestEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsEnabledF3'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsEnabledF3'));            
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodyEnabledF3'));                               
                inGameConfigWrapper.SetVarValue('AMMHead', 'BanditMaskEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BanditMaskEnabledF3'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'HideSvscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideSvscabF3'));
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabEnabledF3'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordEnabledF3'));  
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'HideStscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideStscabF3'));
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StscabEnabledF3'));             
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordEnabledF3')); 
			   
            //Selections
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairSelectionF3'));     
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'AltHairSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BeardSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearSelectionF3')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CapeSelectionF3'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsSelectionF3'));     
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearSelectionF3'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearSelectionF3'));				
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ChestSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BootsSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'LegsSelectionF3'));         
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CChestSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesSelectionF3'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsSelectionF3'));  
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodySelection', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodySelectionF3'));   
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StscabSelectionF3')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabSelectionF3'));
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordSelectionF3')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordSelectionF3'));				
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ToxSelectionF3'));
				
				
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseEnabledF3'));				
                inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HorseSelectionF3')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideSaddle', inGameConfigWrapper.GetVarValue('Hidden', 'HideSaddleF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBags', inGameConfigWrapper.GetVarValue('Hidden', 'HideBagsF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideReins', inGameConfigWrapper.GetVarValue('Hidden', 'HideReinsF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHarness', inGameConfigWrapper.GetVarValue('Hidden', 'HideHarnessF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBlinders', inGameConfigWrapper.GetVarValue('Hidden', 'HideBlindersF3'));
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTail', inGameConfigWrapper.GetVarValue('Hidden', 'HideTailF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHair', inGameConfigWrapper.GetVarValue('Hidden', 'HideHairF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTrophy', inGameConfigWrapper.GetVarValue('Hidden', 'HideTrophyF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachFX', 'HorseFXEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseFXEnabledF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleEnabledF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleSelectionF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersEnabledF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersSelectionF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HairsEnabledF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairsSelectionF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TailsEnabledF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TailsSelectionF3')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BagsEnabledF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BagsSelectionF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesEnabledF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesSelectionF3')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsEnabledF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsSelectionF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessEnabledF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessSelectionF3')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1EnabledF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1SelectionF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2EnabledF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2SelectionF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3EnabledF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3SelectionF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4EnabledF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4SelectionF3')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5EnabledF3')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5SelectionF3')); 	
 
                RefreshAppearance();
				RefreshRoach();
    }  
	
	
function OnSetFavourite4 (){
        //Toggles                  
                inGameConfigWrapper.SetVarValue('Hidden', 'BodyEnabledF4', inGameConfigWrapper.GetVarValue('AMM', 'BodyEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadEnabledF4', inGameConfigWrapper.GetVarValue('AMM', 'HeadEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'StswEnabledF4',inGameConfigWrapper.GetVarValue('AMM', 'StswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvswEnabledF4',inGameConfigWrapper.GetVarValue('AMM', 'SvswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CrossbowEnabledF4',inGameConfigWrapper.GetVarValue('AMM', 'CrossbowEnabled'));              
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxEnabledF4',inGameConfigWrapper.GetVarValue('AMMHead', 'ToxEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableMarkF4', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableMark'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableTattooF4', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableTattoo'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'HairEnabledF4',inGameConfigWrapper.GetVarValue('AMMHead', 'HairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairEnabledF4',inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardRefreshEnabledF4', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardRefreshEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearEnabledF4', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearEnabledF4', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearEnabled')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeEnabledF4', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearEnabledF4', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsEnabledF4', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearEnabledF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearEnabledF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearEnabledF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearEnabledF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearEnabledF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearEnabledF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearEnabledF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearEnabledF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearEnabledF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearEnabledF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ChestEnabledF4', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesEnabledF4', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsEnabledF4', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsEnabledF4', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsEnabled'));               
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestEnabledF4', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesEnabledF4', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsEnabledF4', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsEnabledF4', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsEnabled'));            
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodyEnabledF4', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodyEnabled'));                               
                inGameConfigWrapper.SetVarValue('Hidden', 'BanditMaskEnabledF4', inGameConfigWrapper.GetVarValue('AMMHead', 'BanditMaskEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'HideSvscabF4', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'HideSvscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabEnabledF4', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordEnabledF4', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HideStscabF4', inGameConfigWrapper.GetVarValue('AMMStSwords', 'HideStscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabEnabledF4', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabEnabled'));             
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordEnabledF4', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordEnabled'));
			   
            //Selections
                inGameConfigWrapper.SetVarValue('Hidden', 'HairSelectionF4', inGameConfigWrapper.GetVarValue('AMMHead', 'HairSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairSelectionF4', inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardSelectionF4', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearSelectionF4', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearSelectionF4', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeSelectionF4', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeSelection'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearSelectionF4', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsSelectionF4', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearSelectionF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearSelectionF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearSelectionF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearSelectionF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearSelectionF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearSelectionF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearSelectionF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearSelectionF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearSelectionF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearSelectionF4', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'ChestSelectionF4', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsSelectionF4', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesSelectionF4', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsSelectionF4', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsSelection'));         
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestSelectionF4', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsSelectionF4', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesSelectionF4', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsSelectionF4', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodySelectionF4', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodySelection'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabSelectionF4', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabSelectionF4', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabSelection'));
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordSelectionF4', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordSelectionF4', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxSelectionF4', inGameConfigWrapper.GetVarValue('AMMHead', 'ToxSelection'));
				
			//Roach
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseEnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseEnabled'));				
                inGameConfigWrapper.SetVarValue('Hidden', 'HorseSelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'HideSaddleF4', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideSaddle')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBagsF4', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBags')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideReinsF4', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideReins')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHarnessF4', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHarness')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBlindersF4', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBlinders'));
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTailF4', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTail')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHairF4', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHair')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTrophyF4', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTrophy')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseFXEnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachFX', 'HorseFXEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleEnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleSelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersEnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersSelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsEnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsSelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsEnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsSelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsEnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsSelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesEnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesSelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsEnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsSelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessEnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessSelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1EnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1SelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2EnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2SelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3EnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3SelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4EnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4SelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5EnabledF4', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Enabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5SelectionF4', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Selection')); 	                  
    }
	
   
function OnGetFavourite4 (){
               
                inGameConfigWrapper.SetVarValue('AMM', 'BodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BodyEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMM', 'HeadEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadEnabledF4'));             
                inGameConfigWrapper.SetVarValue('AMM', 'StswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'StswEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMM', 'SvswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'SvswEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMM', 'CrossbowEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'CrossbowEnabledF4'));              
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'ToxEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableMark', inGameConfigWrapper.GetVarValue('Hidden', 'EnableMarkF4'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableTattoo', inGameConfigWrapper.GetVarValue('Hidden', 'EnableTattooF4'));   
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'HairEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'AltHairEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardRefreshEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BeardRefreshEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearEnabledF4')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CapeEnabledF4'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsEnabledF4'));             
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearEnabledF4'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearEnabledF4'));           
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ChestEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'LegsEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BootsEnabledF4'));               
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CChestEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsEnabledF4'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsEnabledF4'));            
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodyEnabledF4'));                               
                inGameConfigWrapper.SetVarValue('AMMHead', 'BanditMaskEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BanditMaskEnabledF4'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'HideSvscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideSvscabF4'));
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabEnabledF4'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordEnabledF4'));  
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'HideStscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideStscabF4'));
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StscabEnabledF4'));             
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordEnabledF4')); 
			   
            //Selections
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairSelectionF4'));     
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'AltHairSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BeardSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearSelectionF4')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CapeSelectionF4'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsSelectionF4'));     
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearSelectionF4'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearSelectionF4'));				
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ChestSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BootsSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'LegsSelectionF4'));         
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CChestSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesSelectionF4'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsSelectionF4'));  
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodySelection', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodySelectionF4'));   
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StscabSelectionF4')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabSelectionF4'));
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordSelectionF4')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordSelectionF4'));				
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ToxSelectionF4'));
				
				
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseEnabledF4'));				
                inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HorseSelectionF4')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideSaddle', inGameConfigWrapper.GetVarValue('Hidden', 'HideSaddleF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBags', inGameConfigWrapper.GetVarValue('Hidden', 'HideBagsF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideReins', inGameConfigWrapper.GetVarValue('Hidden', 'HideReinsF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHarness', inGameConfigWrapper.GetVarValue('Hidden', 'HideHarnessF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBlinders', inGameConfigWrapper.GetVarValue('Hidden', 'HideBlindersF4'));
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTail', inGameConfigWrapper.GetVarValue('Hidden', 'HideTailF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHair', inGameConfigWrapper.GetVarValue('Hidden', 'HideHairF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTrophy', inGameConfigWrapper.GetVarValue('Hidden', 'HideTrophyF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachFX', 'HorseFXEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseFXEnabledF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleEnabledF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleSelectionF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersEnabledF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersSelectionF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HairsEnabledF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairsSelectionF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TailsEnabledF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TailsSelectionF4')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BagsEnabledF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BagsSelectionF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesEnabledF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesSelectionF4')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsEnabledF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsSelectionF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessEnabledF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessSelectionF4')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1EnabledF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1SelectionF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2EnabledF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2SelectionF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3EnabledF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3SelectionF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4EnabledF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4SelectionF4')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5EnabledF4')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5SelectionF4')); 	
 
                RefreshAppearance();
				RefreshRoach();
    }  
	
	
function OnSetFavourite5 (){
        //Toggles                  
                inGameConfigWrapper.SetVarValue('Hidden', 'BodyEnabledF5', inGameConfigWrapper.GetVarValue('AMM', 'BodyEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadEnabledF5', inGameConfigWrapper.GetVarValue('AMM', 'HeadEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'StswEnabledF5',inGameConfigWrapper.GetVarValue('AMM', 'StswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvswEnabledF5',inGameConfigWrapper.GetVarValue('AMM', 'SvswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CrossbowEnabledF5',inGameConfigWrapper.GetVarValue('AMM', 'CrossbowEnabled'));              
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxEnabledF5',inGameConfigWrapper.GetVarValue('AMMHead', 'ToxEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableMarkF5', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableMark'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableTattooF5', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableTattoo'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'HairEnabledF5',inGameConfigWrapper.GetVarValue('AMMHead', 'HairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairEnabledF5',inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardRefreshEnabledF5', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardRefreshEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearEnabledF5', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearEnabledF5', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearEnabled')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeEnabledF5', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearEnabledF5', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsEnabledF5', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearEnabledF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearEnabledF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearEnabledF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearEnabledF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearEnabledF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearEnabledF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearEnabledF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearEnabledF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearEnabledF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearEnabledF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ChestEnabledF5', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesEnabledF5', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsEnabledF5', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsEnabledF5', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsEnabled'));               
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestEnabledF5', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesEnabledF5', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsEnabledF5', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsEnabledF5', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsEnabled'));            
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodyEnabledF5', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodyEnabled'));                               
                inGameConfigWrapper.SetVarValue('Hidden', 'BanditMaskEnabledF5', inGameConfigWrapper.GetVarValue('AMMHead', 'BanditMaskEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'HideSvscabF5', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'HideSvscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabEnabledF5', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordEnabledF5', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HideStscabF5', inGameConfigWrapper.GetVarValue('AMMStSwords', 'HideStscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabEnabledF5', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabEnabled'));             
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordEnabledF5', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordEnabled'));
			   
            //Selections
                inGameConfigWrapper.SetVarValue('Hidden', 'HairSelectionF5', inGameConfigWrapper.GetVarValue('AMMHead', 'HairSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairSelectionF5', inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardSelectionF5', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearSelectionF5', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearSelectionF5', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeSelectionF5', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeSelection'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearSelectionF5', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsSelectionF5', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearSelectionF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearSelectionF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearSelectionF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearSelectionF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearSelectionF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearSelectionF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearSelectionF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearSelectionF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearSelectionF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearSelectionF5', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'ChestSelectionF5', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsSelectionF5', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesSelectionF5', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsSelectionF5', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsSelection'));         
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestSelectionF5', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsSelectionF5', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesSelectionF5', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsSelectionF5', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodySelectionF5', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodySelection'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabSelectionF5', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabSelectionF5', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabSelection'));
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordSelectionF5', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordSelectionF5', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxSelectionF5', inGameConfigWrapper.GetVarValue('AMMHead', 'ToxSelection'));
				
			//Roach
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseEnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseEnabled'));				
                inGameConfigWrapper.SetVarValue('Hidden', 'HorseSelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'HideSaddleF5', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideSaddle')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBagsF5', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBags')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideReinsF5', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideReins')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHarnessF5', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHarness')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBlindersF5', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBlinders'));
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTailF5', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTail')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHairF5', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHair')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTrophyF5', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTrophy')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseFXEnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachFX', 'HorseFXEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleEnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleSelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersEnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersSelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsEnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsSelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsEnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsSelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsEnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsSelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesEnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesSelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsEnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsSelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessEnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessSelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1EnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1SelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2EnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2SelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3EnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3SelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4EnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4SelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5EnabledF5', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Enabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5SelectionF5', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Selection')); 	                  
    }
	
   
function OnGetFavourite5 (){
               
                inGameConfigWrapper.SetVarValue('AMM', 'BodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BodyEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMM', 'HeadEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadEnabledF5'));             
                inGameConfigWrapper.SetVarValue('AMM', 'StswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'StswEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMM', 'SvswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'SvswEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMM', 'CrossbowEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'CrossbowEnabledF5'));              
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'ToxEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableMark', inGameConfigWrapper.GetVarValue('Hidden', 'EnableMarkF5'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableTattoo', inGameConfigWrapper.GetVarValue('Hidden', 'EnableTattooF5'));   
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'HairEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'AltHairEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardRefreshEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BeardRefreshEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearEnabledF5')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CapeEnabledF5'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsEnabledF5'));             
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearEnabledF5'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearEnabledF5'));           
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ChestEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'LegsEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BootsEnabledF5'));               
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CChestEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsEnabledF5'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsEnabledF5'));            
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodyEnabledF5'));                               
                inGameConfigWrapper.SetVarValue('AMMHead', 'BanditMaskEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BanditMaskEnabledF5'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'HideSvscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideSvscabF5'));
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabEnabledF5'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordEnabledF5'));  
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'HideStscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideStscabF5'));
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StscabEnabledF5'));             
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordEnabledF5')); 
			   
            //Selections
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairSelectionF5'));     
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'AltHairSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BeardSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearSelectionF5')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CapeSelectionF5'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsSelectionF5'));     
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearSelectionF5'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearSelectionF5'));				
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ChestSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BootsSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'LegsSelectionF5'));         
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CChestSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesSelectionF5'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsSelectionF5'));  
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodySelection', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodySelectionF5'));   
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StscabSelectionF5')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabSelectionF5'));
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordSelectionF5')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordSelectionF5'));				
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ToxSelectionF5'));
				
				
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseEnabledF5'));				
                inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HorseSelectionF5')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideSaddle', inGameConfigWrapper.GetVarValue('Hidden', 'HideSaddleF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBags', inGameConfigWrapper.GetVarValue('Hidden', 'HideBagsF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideReins', inGameConfigWrapper.GetVarValue('Hidden', 'HideReinsF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHarness', inGameConfigWrapper.GetVarValue('Hidden', 'HideHarnessF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBlinders', inGameConfigWrapper.GetVarValue('Hidden', 'HideBlindersF5'));
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTail', inGameConfigWrapper.GetVarValue('Hidden', 'HideTailF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHair', inGameConfigWrapper.GetVarValue('Hidden', 'HideHairF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTrophy', inGameConfigWrapper.GetVarValue('Hidden', 'HideTrophyF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachFX', 'HorseFXEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseFXEnabledF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleEnabledF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleSelectionF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersEnabledF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersSelectionF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HairsEnabledF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairsSelectionF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TailsEnabledF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TailsSelectionF5')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BagsEnabledF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BagsSelectionF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesEnabledF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesSelectionF5')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsEnabledF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsSelectionF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessEnabledF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessSelectionF5')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1EnabledF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1SelectionF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2EnabledF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2SelectionF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3EnabledF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3SelectionF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4EnabledF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4SelectionF5')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5EnabledF5')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5SelectionF5')); 	
 
                RefreshAppearance();
				RefreshRoach();
    }  
	
	
function OnSetFavourite6 (){
        //Toggles                  
                inGameConfigWrapper.SetVarValue('Hidden', 'BodyEnabledF6', inGameConfigWrapper.GetVarValue('AMM', 'BodyEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadEnabledF6', inGameConfigWrapper.GetVarValue('AMM', 'HeadEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'StswEnabledF6',inGameConfigWrapper.GetVarValue('AMM', 'StswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvswEnabledF6',inGameConfigWrapper.GetVarValue('AMM', 'SvswEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CrossbowEnabledF6',inGameConfigWrapper.GetVarValue('AMM', 'CrossbowEnabled'));              
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxEnabledF6',inGameConfigWrapper.GetVarValue('AMMHead', 'ToxEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableMarkF6', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableMark'));
                inGameConfigWrapper.SetVarValue('Hidden', 'EnableTattooF6', inGameConfigWrapper.GetVarValue('AMMHead', 'EnableTattoo'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'HairEnabledF6',inGameConfigWrapper.GetVarValue('AMMHead', 'HairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairEnabledF6',inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardRefreshEnabledF6', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardRefreshEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearEnabledF6', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearEnabledF6', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearEnabled')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeEnabledF6', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearEnabledF6', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsEnabledF6', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearEnabledF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearEnabledF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearEnabledF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearEnabledF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearEnabledF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearEnabledF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearEnabledF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearEnabledF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearEnabledF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearEnabledF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ChestEnabledF6', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesEnabledF6', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsEnabledF6', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsEnabledF6', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsEnabled'));               
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestEnabledF6', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesEnabledF6', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsEnabledF6', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsEnabledF6', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsEnabled'));            
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodyEnabledF6', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodyEnabled'));                               
                inGameConfigWrapper.SetVarValue('Hidden', 'BanditMaskEnabledF6', inGameConfigWrapper.GetVarValue('AMMHead', 'BanditMaskEnabled'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'HideSvscabF6', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'HideSvscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabEnabledF6', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabEnabled'));
				inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordEnabledF6', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordEnabled'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HideStscabF6', inGameConfigWrapper.GetVarValue('AMMStSwords', 'HideStscab'));
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabEnabledF6', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabEnabled'));             
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordEnabledF6', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordEnabled'));
			   
            //Selections
                inGameConfigWrapper.SetVarValue('Hidden', 'HairSelectionF6', inGameConfigWrapper.GetVarValue('AMMHead', 'HairSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'AltHairSelectionF6', inGameConfigWrapper.GetVarValue('AMMHead', 'AltHairSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BeardSelectionF6', inGameConfigWrapper.GetVarValue('AMMHead', 'BeardSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'HeadGearSelectionF6', inGameConfigWrapper.GetVarValue('AMMHead', 'HeadGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'FaceGearSelectionF6', inGameConfigWrapper.GetVarValue('AMMHead', 'FaceGearSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'CapeSelectionF6', inGameConfigWrapper.GetVarValue('AMMCape', 'CapeSelection'));             
                inGameConfigWrapper.SetVarValue('Hidden', 'ShouldersGearSelectionF6', inGameConfigWrapper.GetVarValue('AMMCape', 'ShouldersGearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ArmsSelectionF6', inGameConfigWrapper.GetVarValue('AMMCape', 'ArmsSelection'));     
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories1GearSelectionF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories1GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories2GearSelectionF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories2GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories3GearSelectionF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories3GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories4GearSelectionF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories4GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories5GearSelectionF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories5GearSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories6GearSelectionF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories6GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories7GearSelectionF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories7GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories8GearSelectionF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories8GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories9GearSelectionF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories9GearSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'Accessories10GearSelectionF6', inGameConfigWrapper.GetVarValue('AMMAcc', 'Accessories10GearSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'ChestSelectionF6', inGameConfigWrapper.GetVarValue('AMMSets', 'ChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'BootsSelectionF6', inGameConfigWrapper.GetVarValue('AMMSets', 'BootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'GlovesSelectionF6', inGameConfigWrapper.GetVarValue('AMMSets', 'GlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'LegsSelectionF6', inGameConfigWrapper.GetVarValue('AMMSets', 'LegsSelection'));         
                inGameConfigWrapper.SetVarValue('Hidden', 'CChestSelectionF6', inGameConfigWrapper.GetVarValue('AMMCSets', 'CChestSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CBootsSelectionF6', inGameConfigWrapper.GetVarValue('AMMCSets', 'CBootsSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CGlovesSelectionF6', inGameConfigWrapper.GetVarValue('AMMCSets', 'CGlovesSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'CLegsSelectionF6', inGameConfigWrapper.GetVarValue('AMMCSets', 'CLegsSelection'));  
                inGameConfigWrapper.SetVarValue('Hidden', 'FullBodySelectionF6', inGameConfigWrapper.GetVarValue('AMMWH', 'FullBodySelection'));   
                inGameConfigWrapper.SetVarValue('Hidden', 'StscabSelectionF6', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StscabSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvscabSelectionF6', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvscabSelection'));
				inGameConfigWrapper.SetVarValue('Hidden', 'StSwordSelectionF6', inGameConfigWrapper.GetVarValue('AMMStSwords', 'StSwordSelection')); 
                inGameConfigWrapper.SetVarValue('Hidden', 'SvSwordSelectionF6', inGameConfigWrapper.GetVarValue('AMMSvSwords', 'SvSwordSelection'));
                inGameConfigWrapper.SetVarValue('Hidden', 'ToxSelectionF6', inGameConfigWrapper.GetVarValue('AMMHead', 'ToxSelection'));
				
			//Roach
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseEnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseEnabled'));				
                inGameConfigWrapper.SetVarValue('Hidden', 'HorseSelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HorseSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'HideSaddleF6', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideSaddle')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBagsF6', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBags')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideReinsF6', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideReins')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHarnessF6', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHarness')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideBlindersF6', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideBlinders'));
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTailF6', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTail')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideHairF6', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideHair')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HideTrophyF6', inGameConfigWrapper.GetVarValue('AMMRoachToggles', 'HideTrophy')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HorseFXEnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachFX', 'HorseFXEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleEnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'SaddleSelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'SaddleSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersEnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'BlindersSelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachSaddle', 'BlindersSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsEnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'HairsSelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'HairsSelection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsEnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsEnabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'TailsSelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachHorse', 'TailsSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsEnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'BagsSelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'BagsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesEnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'TrophiesSelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachBags', 'TrophiesSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsEnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'ReinsSelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'ReinsSelection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessEnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessEnabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'HarnessSelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachReins', 'HarnessSelection')); 				
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1EnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc1SelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc1Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2EnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc2SelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc2Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3EnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc3SelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc3Selection')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4EnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Enabled')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc4SelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc4Selection')); 	
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5EnabledF6', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Enabled')); 
				inGameConfigWrapper.SetVarValue('Hidden', 'Acc5SelectionF6', inGameConfigWrapper.GetVarValue('AMMRoachAcc', 'Acc5Selection')); 	                  
    }
	
   
function OnGetFavourite6 (){
               
                inGameConfigWrapper.SetVarValue('AMM', 'BodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BodyEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMM', 'HeadEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadEnabledF6'));             
                inGameConfigWrapper.SetVarValue('AMM', 'StswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'StswEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMM', 'SvswEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'SvswEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMM', 'CrossbowEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'CrossbowEnabledF6'));              
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'ToxEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableMark', inGameConfigWrapper.GetVarValue('Hidden', 'EnableMarkF6'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'EnableTattoo', inGameConfigWrapper.GetVarValue('Hidden', 'EnableTattooF6'));   
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'HairEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairEnabled',inGameConfigWrapper.GetVarValue('Hidden', 'AltHairEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardRefreshEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BeardRefreshEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearEnabledF6')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CapeEnabledF6'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsEnabledF6'));             
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearEnabledF6'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearEnabledF6'));           
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ChestEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'LegsEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BootsEnabledF6'));               
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CChestEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsEnabledF6'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsEnabledF6'));            
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodyEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodyEnabledF6'));                               
                inGameConfigWrapper.SetVarValue('AMMHead', 'BanditMaskEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BanditMaskEnabledF6'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'HideSvscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideSvscabF6'));
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabEnabledF6'));             
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordEnabledF6'));  
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'HideStscab', inGameConfigWrapper.GetVarValue('Hidden', 'HideStscabF6'));
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StscabEnabledF6'));             
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordEnabledF6')); 
			   
            //Selections
                inGameConfigWrapper.SetVarValue('AMMHead', 'HairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairSelectionF6'));     
                inGameConfigWrapper.SetVarValue('AMMHead', 'AltHairSelection', inGameConfigWrapper.GetVarValue('Hidden', 'AltHairSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'BeardSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BeardSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'HeadGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HeadGearSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMHead', 'FaceGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'FaceGearSelectionF6')); 
                inGameConfigWrapper.SetVarValue('AMMCape', 'CapeSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CapeSelectionF6'));             
                inGameConfigWrapper.SetVarValue('AMMCape', 'ShouldersGearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ShouldersGearSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMCape', 'ArmsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ArmsSelectionF6'));     
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories1GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories1GearSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories2GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories2GearSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories3GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories3GearSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories4GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories4GearSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories5GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories5GearSelectionF6'));
				inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories6GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories6GearSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories7GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories7GearSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories8GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories8GearSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories9GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories9GearSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMAcc', 'Accessories10GearSelection', inGameConfigWrapper.GetVarValue('Hidden', 'Accessories10GearSelectionF6'));				
                inGameConfigWrapper.SetVarValue('AMMSets', 'ChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ChestSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'BootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BootsSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'GlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'GlovesSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMSets', 'LegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'LegsSelectionF6'));         
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CChestSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CChestSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CBootsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CBootsSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CGlovesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CGlovesSelectionF6'));
                inGameConfigWrapper.SetVarValue('AMMCSets', 'CLegsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'CLegsSelectionF6'));  
                inGameConfigWrapper.SetVarValue('AMMWH', 'FullBodySelection', inGameConfigWrapper.GetVarValue('Hidden', 'FullBodySelectionF6'));   
                inGameConfigWrapper.SetVarValue('AMMStSwords', 'StscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StscabSelectionF6')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvscabSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvscabSelectionF6'));
				inGameConfigWrapper.SetVarValue('AMMStSwords', 'StSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'StSwordSelectionF6')); 
                inGameConfigWrapper.SetVarValue('AMMSvSwords', 'SvSwordSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SvSwordSelectionF6'));				
                inGameConfigWrapper.SetVarValue('AMMHead', 'ToxSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ToxSelectionF6'));
				
				
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseEnabledF6'));				
                inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HorseSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HorseSelectionF6')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideSaddle', inGameConfigWrapper.GetVarValue('Hidden', 'HideSaddleF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBags', inGameConfigWrapper.GetVarValue('Hidden', 'HideBagsF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideReins', inGameConfigWrapper.GetVarValue('Hidden', 'HideReinsF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHarness', inGameConfigWrapper.GetVarValue('Hidden', 'HideHarnessF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideBlinders', inGameConfigWrapper.GetVarValue('Hidden', 'HideBlindersF6'));
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTail', inGameConfigWrapper.GetVarValue('Hidden', 'HideTailF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideHair', inGameConfigWrapper.GetVarValue('Hidden', 'HideHairF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachToggles', 'HideTrophy', inGameConfigWrapper.GetVarValue('Hidden', 'HideTrophyF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachFX', 'HorseFXEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HorseFXEnabledF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleEnabledF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'SaddleSelection', inGameConfigWrapper.GetVarValue('Hidden', 'SaddleSelectionF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersEnabledF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachSaddle', 'BlindersSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BlindersSelectionF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HairsEnabledF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'HairsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HairsSelectionF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TailsEnabledF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachHorse', 'TailsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TailsSelectionF6')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'BagsEnabledF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'BagsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'BagsSelectionF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesEnabledF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachBags', 'TrophiesSelection', inGameConfigWrapper.GetVarValue('Hidden', 'TrophiesSelectionF6')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsEnabledF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'ReinsSelection', inGameConfigWrapper.GetVarValue('Hidden', 'ReinsSelectionF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessEnabled', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessEnabledF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachReins', 'HarnessSelection', inGameConfigWrapper.GetVarValue('Hidden', 'HarnessSelectionF6')); 				
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1EnabledF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc1Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc1SelectionF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2EnabledF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc2Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc2SelectionF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3EnabledF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc3Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc3SelectionF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4EnabledF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc4Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc4SelectionF6')); 	
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Enabled', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5EnabledF6')); 
				inGameConfigWrapper.SetVarValue('AMMRoachAcc', 'Acc5Selection', inGameConfigWrapper.GetVarValue('Hidden', 'Acc5SelectionF6')); 	
 
                RefreshAppearance();
				RefreshRoach();
    }  
	
	function SetSlider(slider : CName){
	
	ammslider = slider;
	
	}
	
} // END AMM CODE


exec function amms(slider : CName){

var vAMM : CAMM;

vAMM = GetWitcherPlayer().getAMM();

vAMM.SetSlider(slider);

}


//######################
//TEST EXEC FUNCTIONS
//######################

/*exec function swdon(){

var inv : CInventoryComponent;
var ids : array<SItemUniqueId>;

inv = thePlayer.GetInventory();

ids = inv.AddAnItem('Test Player Override Sword', 1);
inv.AddItemTag(ids[0], 'NoShow');
inv.AddItemTag(ids[0], 'NoDrop');
inv.AddItemTag(ids[0], 'EncumbranceOff');

inv.AddItemTag(ids[0], 'AMM_Sword');

//inv.MountItem(ids[0],true);
thePlayer.EquipItem(ids[0]);

}

exec function swdoff(){

var inv : CInventoryComponent;
var ids : array<SItemUniqueId>;

inv = thePlayer.GetInventory();

ids = inv.GetItemsByTag('AMM_Sword');

inv.RemoveItem(ids[0], 1);

}

exec function sword(){
    var ent, ent2, temp2 : CEntity;
    var witcher : W3PlayerWitcher;
    var inv : CInventoryComponent;
    var ids : array<SItemUniqueId>;
    var size : int;
    var i    : int;

    var temp : CEntityTemplate;
    var itemId : SItemUniqueId;
    var testcomp, testcomp2 : CComponent;
    var rigidcomp, rigidcomp2 : CRigidMeshComponent;

    inv = thePlayer.GetInventory();
    itemId = thePlayer.GetEquippedSword(true);

    ent = inv.GetItemEntityUnsafe(itemId);


    testcomp = ent.GetComponentByClassName('CRigidMeshComponent');
    rigidcomp = ((CRigidMeshComponent)testcomp);

    temp = (CEntityTemplate)LoadResource("items\weapons\swords\witcher_steel_swords\witcher_steel_bear_sword_lvl1.w2ent", true);
    ent2 = theGame.CreateEntity(temp, thePlayer.GetWorldPosition(), thePlayer.GetWorldRotation());
    testcomp2 = ent2.GetComponentByClassName('CRigidMeshComponent');
    rigidcomp2 = ((CRigidMeshComponent)testcomp2);

    rigidcomp.mesh = rigidcomp2.mesh;

    theGame.GetGuiManager().ShowNotification(rigidcomp.mesh);

}

exec function testsword(){
    var ent, ent2 : CEntity;
    var inv : CInventoryComponent;
    var i    : float;
    var temp : CEntityTemplate;
    var item : SItemUniqueId;
    var meshcomp, animcomp : CComponent;


    inv = thePlayer.GetInventory();

    GetWitcherPlayer().GetItemEquippedOnSlot(EES_SteelSword, item);
    //GetWitcherPlayer().GetItemEquippedOnSlot(EES_SilverSword, item);


    ent = inv.GetItemEntityUnsafe(item);


    animcomp = ent.GetComponentByClassName('CAnimatedComponent');
    meshcomp = ent.GetComponentByClassName('CMeshComponent');

    i = 0.01;

    animcomp.SetScale(Vector(i,i,i,1));
    meshcomp.SetScale(Vector(i,i,i,1));


    temp = (CEntityTemplate)LoadResource("items\weapons\swords\witcher_steel_swords\witcher_steel_bear_sword_lvl1.w2ent", true);
    ent2 = theGame.CreateEntity(temp, ent.GetWorldPosition(), ent.GetWorldRotation());

    ent2.CreateAttachment( ent );	
	
}*/