class CHPAS_Manage
{
	public var isEditOn    : bool; 
	public var currentInputContext : name;
	public var effectArray  : array< CBaseGameplayEffect >;
	public var effectOnHud  : bool;
	
	// Start Edit Mode
	public function StartEditMode()
	{
		var i : int;
		
		SetString( 'EditMode', 'Edit', true );
		isEditOn = GetString( 'EditMode', 'Edit');
		ShowMsg("HPAS - Edit Mode");
		
		theGame.Pause( "user_pause" );
		theSound.SoundEvent( "system_pause" );
		
		currentInputContext = theInput.GetContext();
		theInput.SetContext('Combat'); // So  Wolf medallion, Item Info and Horse Fear/Stamina bars show up
		BlockActions(true); // Block Input Actions
		
		// Add Buff Effect
		effectArray = thePlayer.GetCurrentEffects(); 
		
		for ( i = 0; i < effectArray.Size(); i += 1 ) // Check if a buff is on hud 
		{
			if ( effectArray[i].ShowOnHUD() ) { effectOnHud = true; break; }
			else { effectOnHud = false; }
		}
		
		if (!effectOnHud) 
		{ 
			AddBuffEffectSlot(1); 
			AddBuffEffectSlot(2); 
			AddBuffEffectSlot(3); 
			AddBuffEffectSlot(4); 
		}
	}
	
	// Stop Edit Mode
	public function StopEditMode()
	{
		SetString( 'EditMode', 'Edit', false );
		isEditOn = GetString( 'EditMode', 'Edit');
		HideMsg();

		theGame.Unpause( "user_pause" );
		theSound.SoundEvent( "system_resume" );
		
		theInput.SetContext(currentInputContext); 
		BlockActions(false); // Unblock Input Actions
		
		if (!effectOnHud) { GetWitcherPlayer().SimulateBuffTimePassing(5000); } // Remove Buff Effect
	}
	
	private var varID   : name;  
	private var Opacity  : float;
	private var isModOn  : bool;
	
	// Global Scale and Opacity
	public function SetGlobal()
	{
		if ( isModOn() ) 
		{ 
			theGame.SetUIGamepadScaleGain( GlobalScale()-1 ); 
			theGame.SetUIOpacity( GlobalOpacity() );
		}
		
		if ( Opacity != GlobalOpacity() || isModOn != isModOn() ) 
		{ 
			RefreshHudModules(); // Refresh HUD if Opacity changed or Mod turned On/Off
		} 
		
		Opacity = GlobalOpacity();
		isModOn = isModOn();
	}
	
	// Switch VarID based on the EditType
	private function SwitchVarID( EditType, XVarID, YVarID, SVarID : name )
	{
		switch( EditType )
		{
			case 'X' : varID = XVarID; break;
			case 'Y' : varID = YVarID; break;
			case 'S' : varID = SVarID; break;
		}
	}

	// Change Position/Scale 
	public function Offset( GroupID: name, moduletype : int, EditType : name, action : name, amount : float)
	{
		var hud        : CR4ScriptedHud;
		var value      : float;		
		
		// If Mod, Edit Mode or Hud is off don't change position/scale
		if (!isModOn() || !isEditOn() || !GetString( 'Hud', 'HudVisibility' )) { return; } 
		
		// Switch the VarID based on the GroupID, moduletype and EditType
		if (moduletype == 1)
		{
			switch( GroupID )
			{
				case 'WolfMedallion'      : SwitchVarID( EditType, 'tempXWolfHead',         'tempYWolfHead',         'scaleWolfHead'         );  break; 				
				case 'MinimapandQuests'   : SwitchVarID( EditType, 'tempXMinimap2',         'tempYMinimap2',         'scaleMinimap2'         );  break;
				case 'Buffs'              : SwitchVarID( EditType, 'tempXBuffs',            'tempYBuffs',            'scaleBuffs'            );  break;			
				case 'ItemInfo'           : SwitchVarID( EditType, 'tempXItemInfo',         'tempYItemInfo',         'scaleItemInfo'         );  break;		
				case 'ControlsandConsole' : SwitchVarID( EditType, 'tempXControlsFeedback', 'tempYControlsFeedback', 'scaleControlsFeedback' );  break;
				case 'Horse'              : SwitchVarID( EditType, 'tempXHorseStaminaBar',  'tempYHorseStaminaBar',  'scaleHorseStaminaBar'  );  break;
				case 'OxygenandBoat'      : SwitchVarID( EditType, 'tempXOxygenBar',        'tempYOxygenBar',        'scaleOxygenBar'        );  break;
				case 'BossandComp'        : SwitchVarID( EditType, 'tempXBoss',             'tempYBoss',             'scaleBoss'             );  break;
				case 'Enemy'              : SwitchVarID( EditType, 'tempXEnemy',            'tempYEnemy',            'scaleEnemy'            );  break;
				case 'none'               : ShowMsg("Need to choose a HUD Module first");    theSound.SoundEvent("gui_global_denied");  return;  break;
			}
		}
		else if (moduletype == 2)
		{
			switch( GroupID )
			{
				case 'MinimapandQuests'   : SwitchVarID( EditType, 'tempXQuests',        'tempYQuests',        'scaleQuests'        );  break;
				case 'Buffs'              : SwitchVarID( EditType, 'tempXBuffsRM',       'tempYBuffsRM',       'scaleBuffsRM'       );  break;
				case 'ItemInfo'           : SwitchVarID( EditType, 'tempXDamagedItems',  'tempYDamagedItems',  'scaleDamagedItems'  );  break;
				case 'ControlsandConsole' : SwitchVarID( EditType, 'tempXConsole',       'tempYConsole',       'scaleConsole'       );  break;
				case 'Horse'              : SwitchVarID( EditType, 'tempXHorsePanicBar', 'tempYHorsePanicBar', 'scaleHorsePanicBar' );  break;
				case 'OxygenandBoat'      : SwitchVarID( EditType, 'tempXBoatHealth',    'tempYBoatHealth',    'scaleBoatHealth'    );  break;
				case 'BossandComp'        : SwitchVarID( EditType, 'tempXComp',          'tempYComp',          'scaleComp'          );  break;
			}
		}
		
		value = GetFloat( GroupID, varID ); // Get the current Position/Scale
		
		// Changing the Position/Scale based on the EditType, offset action and current value
		switch( EditType )
		{
			case 'X' : if      ( action == 'plus'  ) {value += amount;}
				       else if ( action == 'minus' ) {value -= amount;}
					   if      ( value > 400 ) {value -= 400;} // Limit to Menu Slider range 
					   else if ( value < 0   ) {value += 400;}
			break;
		
			case 'Y' : if      ( action == 'plus'  ) {value += amount;}
				       else if ( action == 'minus' ) {value -= amount;}
					   if      ( value > 400 ) {value -= 400;} // Limit to Menu Slider range
					   else if ( value < 0   ) {value += 400;}
			break;
			
			case 'S' : if      ( action == 'plus'  ) {value += amount;}
				       else if ( action == 'minus' ) {value -= amount;}
					   if      ( value > 1.5   ) {value -= 1;} // Limit to Menu Slider range
					   else if ( value < 0.5   ) {value += 1;}
			break;
		}
		
		SetString( GroupID, varID, value ); // Set the new Position/Scale
		
		hud = (CR4ScriptedHud)theGame.GetHud();
		hud.RescaleModules(); // Update Position/Scale
		
		// Save the Position/Scale change if the option is enabled
		if ( GetString( 'EditMode', 'Save' ) )
		{
			theGame.SaveUserSettings();
		}
		
		// Show the current Position/Scale of the chosen module
		if (moduletype == 1)
		{
			switch( GroupID )
			{
				case 'WolfMedallion'      : ShowMsg( "Wolf Medallion:"      + " " + EditType + " = " + value );  break;
				case 'MinimapandQuests'   : ShowMsg( "Minimap:"             + " " + EditType + " = " + value );  break;
				case 'Buffs'              : ShowMsg( "Buffs:"               + " " + EditType + " = " + value );  break;			
				case 'ItemInfo'           : ShowMsg( "Item Info:"           + " " + EditType + " = " + value );  break;		
				case 'ControlsandConsole' : ShowMsg( "Controls Feedback:"   + " " + EditType + " = " + value );  break;
				case 'Horse'              : ShowMsg( "Horse Stamina Bar:"   + " " + EditType + " = " + value );  break;
				case 'OxygenandBoat'      : ShowMsg( "Oxygen Bar:"          + " " + EditType + " = " + value );  break;
				case 'BossandComp'        : ShowMsg( "Boss Health Bar:"     + " " + EditType + " = " + value );  break;
				case 'Enemy'              : ShowMsg( "Enemy Health Bar:"    + " " + EditType + " = " + value );  break;
			}
		}
		else if (moduletype == 2)
		{
			switch( GroupID )
			{
				case 'MinimapandQuests'   : ShowMsg( "Active Quests:"       + " " + EditType + " = " + value );  break;
				case 'Buffs'              : ShowMsg( "Radial Buffs:"        + " " + EditType + " = " + value );  break;
				case 'ItemInfo'           : ShowMsg( "Damaged Items:"       + " " + EditType + " = " + value );  break;
				case 'ControlsandConsole' : ShowMsg( "Action Log:"          + " " + EditType + " = " + value );  break;
				case 'Horse'              : ShowMsg( "Horse Fear Bar:"      + " " + EditType + " = " + value );  break;
				case 'OxygenandBoat'      : ShowMsg( "Boat Health:"         + " " + EditType + " = " + value );  break;
				case 'BossandComp'        : ShowMsg( "Companion Portrait:"  + " " + EditType + " = " + value );  break;
			}
		}
	}	
}

// Start Edit Mode via console
exec function hpasdebug()
{
	var mHPAS_Manage	: CHPAS_Manage;
	
	mHPAS_Manage = new CHPAS_Manage in theGame.GetHud();
	
	if ( !isModOn() ) 
	{ 
		thePlayer.DisplayHudMessage("Mod is off!"); return; 
	} 
	
	if ( !GetString( 'Hud', 'HudVisibility' ) ) 
	{ 
		return; 
	} 
	
	if ( !isEditOn() ) 
	{ 
		mHPAS_Manage.StartEditMode(); 
	} 
	else 
	{ 
		mHPAS_Manage.StopEditMode(); 

		SetInputContext();
	}	
}

// Set Input context (for using Edit Mode via console)
function SetInputContext()
{ 
	if( thePlayer.GetCurrentStateName() == 'AimThrow' )
	{
		theInput.SetContext('ThrowHold');
	}	
	else if( thePlayer.GetCurrentStateName() == 'ExplorationMeditation' )
	{
		theInput.SetContext('Meditation');
	}	
	else if( thePlayer.IsSwimming() )
	{
		theInput.SetContext('Swimming');
	}	
	else if( thePlayer.IsDiving() )
	{
		theInput.SetContext('Diving');
	}	
	else if (thePlayer.GetCurrentStateName() == 'HorseRiding')
	{
		theInput.SetContext('Horse');
		
		if (thePlayer.IsCiri()) 
		{
			theInput.SetContext('Horse_Replacer_Ciri');
		}
	}
	else if( thePlayer.GetCurrentStateName() == 'Sailing' )
	{
		theInput.SetContext('Boat');
	}	
	else if( thePlayer.GetCurrentStateName() == 'TraverseExploration' || thePlayer.GetCurrentStateName() == 'Exploration' )
	{
		theInput.SetContext('Exploration');
		
		if (thePlayer.IsCiri()) 
		{
			theInput.SetContext('Exploration_Replacer_Ciri');
		}
	}	
	else if (thePlayer.IsInCombat())
	{
		theInput.SetContext('Combat');
		
		if (thePlayer.IsCiri()) 
		{
			theInput.SetContext('Combat_Replacer_Ciri');
		}
	}
}

// Intialize a Value
function InitValue( GroupID, VarID : name, newvalue : float)
{
	if (GetFloat( GroupID, VarID ) == 0)
	{
		SetString( GroupID, VarID, newvalue );
	}
}

// Intialize Mod Settings
function InitHPASSettings()
{
	// Set Edit Mode off in case it was on when the game was exited
	SetString( 'EditMode', 'Edit', false ); 
	
	// Iniitialize Global Scale & Opacity
	InitValue('Global', 'scale',   1);
	InitValue('Global', 'opacity', 1);
	
	// Initialize Pos Offsets
	InitValue('EditMode', 'OffsetPos',      5.00);
	InitValue('EditMode', 'OffsetPosMod',   1.00);
	InitValue('EditMode', 'OffsetPosMod2', 50.00);
	
	// Initialize Scale Offsets
	InitValue('EditMode', 'OffsetScale',     0.05);
	InitValue('EditMode', 'OffsetScaleMod',  0.01);
	InitValue('EditMode', 'OffsetScaleMod2', 0.25);
}

// Block Input Actions
function BlockActions( value : bool )
{
	if (value)
	{			
		thePlayer.BlockAction(EIAB_LightAttacks,'EditMode');
		thePlayer.BlockAction(EIAB_HeavyAttacks,'EditMode');
		thePlayer.BlockAction(EIAB_Roll,'EditMode');
		thePlayer.BlockAction(EIAB_Dodge,'EditMode');
		thePlayer.BlockAction(EIAB_Signs,'EditMode');
		thePlayer.BlockAction(EIAB_QuickSlots,'EditMode');
		thePlayer.BlockAction(EIAB_Crossbow,'EditMode');
		thePlayer.BlockAction(EIAB_UsableItem,'EditMode');
		thePlayer.BlockAction(EIAB_ThrowBomb,'EditMode');
		thePlayer.BlockAction(EIAB_DrawWeapon,'EditMode');
		thePlayer.BlockAction(EIAB_CallHorse,'EditMode');
		
		thePlayer.BlockAction(EIAB_OpenMap,'EditMode');
		thePlayer.BlockAction(EIAB_OpenInventory, 'EditMode');
		thePlayer.BlockAction(EIAB_OpenMeditation, 'EditMode');
		thePlayer.BlockAction(EIAB_OpenCharacterPanel,'EditMode');			
		thePlayer.BlockAction(EIAB_OpenJournal,'EditMode');
		thePlayer.BlockAction(EIAB_OpenAlchemy,'EditMode');
		thePlayer.BlockAction(EIAB_OpenGlossary,'EditMode');
		thePlayer.BlockAction(EIAB_OpenPreparation,'EditMode');
		thePlayer.BlockAction(EIAB_OpenGwint,'EditMode');
	}
	else
	{
		thePlayer.BlockAllActions('EditMode', false);
	}
}

// Add the buff effect from a quickslot
function AddBuffEffectSlot( slot : int )
{
	var item       : SItemUniqueId;
	var params     : SCustomEffectParams;
	var effectType : EEffectType;
	var customAbilityName : name;
	
	switch( slot )
	{
		case 1 : GetWitcherPlayer().GetItemEquippedOnSlot(EES_Potion1, item); break;
		case 2 : GetWitcherPlayer().GetItemEquippedOnSlot(EES_Potion2, item); break;
		case 3 : GetWitcherPlayer().GetItemEquippedOnSlot(EES_Potion3, item); break;
		case 4 : GetWitcherPlayer().GetItemEquippedOnSlot(EES_Potion4, item); break;
	}
	
	thePlayer.inv.GetPotionItemBuffData(item, effectType, customAbilityName);
	
	params.effectType = effectType;
	params.creator = thePlayer;
	params.sourceName = "edible";
	params.duration = 10;
	params.customAbilityName = customAbilityName;
	
	thePlayer.AddEffectCustom(params);
}

// Show a Oneliner 
function ShowMsg( msg : string )
{
	var hud         : CR4ScriptedHud;
	var activeActor : CEntity;
	var actor		: CPlayer = thePlayer;
	
	activeActor = (CEntity) actor;
	
	hud = (CR4ScriptedHud)theGame.GetHud();
	hud.HideOneliner( activeActor ); 
	hud.ShowOneliner( msg, activeActor );
}

// Hide a Oneliner
function HideMsg()
{
	var hud         : CR4ScriptedHud;
	var activeActor : CEntity;
	var actor		: CPlayer = thePlayer;
	
	activeActor = (CEntity) actor;
	
	hud = (CR4ScriptedHud)theGame.GetHud();
	hud.HideOneliner( activeActor );	
}

// Is the Mod enabled
function isModOn() : bool
{
	return GetString( 'All', 'isModOn' );
}

// If Mod is disabled, return Alternative float
function ifModOff( Alt: float, GroupID: name, VarID : name ) : float
{
	if ( !isModOn() ) return Alt; 
	else return GetFloat( GroupID, VarID);
}

// Is Edit Mode on
function isEditOn() : bool
{
	return GetString( 'EditMode', 'Edit' );
}

// Is the Radial Menu open
function IsRadialMenuOpened() : bool
{
	var hud : CR4ScriptedHud;
	hud = (CR4ScriptedHud)theGame.GetHud();
	
	return hud.IsRadialMenuOpened();
}

// Get Buffs Minimal View Mode
function BuffsMinimal() : int
{ 
	return GetInt('Buffs', 'BuffsMinimal');
}

// Are Buffs in Minimal View Mode
function IsBuffsMinimal() : bool
{ 
	if ( IsRadialMenuOpened() ) 
	{
		if ( BuffsMinimal() == 1 || BuffsMinimal() == 2 ) return true;
		else return false;
	}
	else 
	{
		if ( BuffsMinimal() == 1 || BuffsMinimal() == 3 ) return false;
		else return true;
	}
}

// Disable then re-enable hudmodules (for opacity change)
function RefreshHudModule(configName : name) 
{
	var hud : CR4ScriptedHud;
	var module : CR4HudModuleBase;
	var configValue : string;
	
	configValue = GetString('Hud', configName);
	
	if( configName == 'WolfMedalion' )
	{
		configName = 'WolfHeadModule';
	}
	
	hud = (CR4ScriptedHud)theGame.GetHud();
	module = (CR4HudModuleBase)hud.GetHudModule(NameToString(configName));
	
	if (configValue == "true")
	{
		module.SetEnabled(false);
		module.SetEnabled(true);
	}
	
	hud.UpdateHUD();	
}

// Refresh all modules
function RefreshHudModules() 
{
	RefreshHudModule('WolfMedalion');
	RefreshHudModule('Minimap2Module'); 	
	RefreshHudModule('QuestsModule'); 	
	RefreshHudModule('BuffsModule');
	RefreshHudModule('ItemInfoModule'); 	
	RefreshHudModule('DamagedItemsModule'); 
	RefreshHudModule('ControlsFeedbackModule'); 
	RefreshHudModule('ConsoleModule');
	RefreshHudModule('HorseStaminaBarModule');
	RefreshHudModule('HorsePanicBarModule');
	RefreshHudModule('OxygenBarModule');
	RefreshHudModule('BoatHealthModule');
	RefreshHudModule('BossFocusModule');
	RefreshHudModule('CompanionModule');
	RefreshHudModule('EnemyFocusModule');
	
	RefreshHudModule('AreaInfoModule');
	RefreshHudModule('CrosshairModule');
	RefreshHudModule('OnelinersModule');
	RefreshHudModule('DialogModule');
	RefreshHudModule('SubtitlesModule');
	RefreshHudModule('MessageModule');
}

// Is Enemy Health Bar positioning enabled
function isEnemyOn() : bool 
{ 
	return GetString('Enemy', 'EnemyONOFF');
}

// Get Menu String
function GetString( GroupID: name, VarID : name ) : string 
{
	return theGame.GetInGameConfigWrapper().GetVarValue(GroupID, VarID);
}

// Get Menu Float
function GetFloat( GroupID: name, VarID : name ) : float 
{
	return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue(GroupID, VarID));
}

// Get Menu Int
function GetInt( GroupID: name, VarID : name ) : int 
{
	return StringToInt(theGame.GetInGameConfigWrapper().GetVarValue(GroupID, VarID));
}

// Set Menu String
function SetString( GroupID: name, VarID : name, VarValue : string )
{
	theGame.GetInGameConfigWrapper().SetVarValue(GroupID, VarID, VarValue);
}