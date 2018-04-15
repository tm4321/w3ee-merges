class CHPAS_Input extends CHPAS_Manage
{                         
	private var GroupID     : name; default GroupID = 'none';
	private var moduletype  : int;  default moduletype = 1;
	private var msg         : string;
	
	// Initialize inputs (called in hudModuleBase.ws)
	public function InitInputs() 
	{
		theInput.RegisterListener( this, 'OnToggleEditMode', 'hpasToggleEditMode' );
		theInput.RegisterListener( this, 'OnSaveModules',    'hpasSaveModules'    );
		
		// Toggle HUD Module
		theInput.RegisterListener( this, 'OnToggleModule', 'hpasToggleModuleUp'   );
		theInput.RegisterListener( this, 'OnToggleModule', 'hpasToggleModuleDown' );
		
		// Offset Modifiers
		theInput.RegisterListener( this, 'OnOffsetModifiers', 'hpasOffsetModifier' );
		theInput.RegisterListener( this, 'OnOffsetModifiers', 'hpasOffsetModifier2' );
		
		// Change Position
		theInput.RegisterListener( this, 'OnOffsetPos', 'hpasAddX' );
		theInput.RegisterListener( this, 'OnOffsetPos', 'hpasRemX' );
		theInput.RegisterListener( this, 'OnOffsetPos', 'hpasAddY' );
		theInput.RegisterListener( this, 'OnOffsetPos', 'hpasRemY' );
		
		// Change Scale
		theInput.RegisterListener( this, 'OnOffsetScale', 'hpasAddS' );
		theInput.RegisterListener( this, 'OnOffsetScale', 'hpasRemS' );
		
		InitAltInputs();
	}
	
	// Toggle Edit Mode
	event OnToggleEditMode(action:SInputAction)
	{
		if (IsPressed(action) && !isEditOn && isModOn() && GetString( 'Hud', 'HudVisibility' ))
		{							
			StartEditMode();
		}
		else if (IsPressed(action) && isEditOn && GetString( 'Hud', 'HudVisibility' ))
		{
			GroupID = 'none'; moduletype = 1; 
			StopEditMode();
		}
	}
	
	// Save Changes
	event OnSaveModules(action:SInputAction)
	{
		if (IsPressed(action) && isEditOn && isModOn() && !GetString( 'EditMode', 'Save' ) && GetString( 'Hud', 'HudVisibility' ))
		{
			theGame.SaveUserSettings();
			msg = "Changes saved"; ShowMsg(msg);
		}
	}
	
	// Toggle HUD Modules
	event OnToggleModule(action:SInputAction)
	{		
		if (IsPressed(action) && (!isEditOn || !isModOn() || !GetString( 'Hud', 'HudVisibility' ))){ return true; }
		
		if (IsPressed(action) && action.aName == 'hpasToggleModuleUp' && moduletype == 1)
		{
			switch( GroupID )
			{
				case 'none'               : GroupID = 'WolfMedallion';     ShowMsg( "Wolf Medallion"       );  break;
				case 'WolfMedallion'      : GroupID = 'MinimapandQuests';  ShowMsg( "Minimap"              );  break;
				case 'MinimapandQuests'   : moduletype = 2;                ShowMsg( "Active Quests"        );  break;
				case 'Buffs'              : moduletype = 2;                ShowMsg( "Radial Buffs"         );  break;
				case 'ItemInfo'           : moduletype = 2;                ShowMsg( "Damaged Items"        );  break;
				case 'ControlsandConsole' : moduletype = 2;                ShowMsg( "Action Log"           );  break;
				case 'Horse'              : moduletype = 2;                ShowMsg( "Horse Fear Bar"       );  break;
				case 'OxygenandBoat'      : moduletype = 2;                ShowMsg( "Boat Health"          );  break;
				case 'BossandComp'        : moduletype = 2;                ShowMsg( "Companion Portrait"   );  break;
				case 'Enemy'              : GroupID = 'WolfMedallion';     ShowMsg( "Wolf Medallion"       );  break;
			}
		}
		else if (IsPressed(action) && action.aName == 'hpasToggleModuleUp' && moduletype == 2)
		{
			switch( GroupID )
			{
				case 'MinimapandQuests'   : GroupID = 'Buffs';               moduletype = 1;  ShowMsg( "Buffs"             );  break;
				case 'Buffs'              : GroupID = 'ItemInfo';            moduletype = 1;  ShowMsg( "Item Info"         );  break;
				case 'ItemInfo'           : GroupID = 'ControlsandConsole';  moduletype = 1;  ShowMsg( "Controls Feedback" );  break;
				case 'ControlsandConsole' : GroupID = 'Horse';               moduletype = 1;  ShowMsg( "Horse Stamina Bar" );  break;
				case 'Horse'              : GroupID = 'OxygenandBoat';       moduletype = 1;  ShowMsg( "Oxygen Bar"        );  break;
				case 'OxygenandBoat'      : GroupID = 'BossandComp';         moduletype = 1;  ShowMsg( "Boss Health Bar"   );  break;
				case 'BossandComp'        : GroupID = 'Enemy';               moduletype = 1;  ShowMsg( "Enemy Health Bar"  );  break;
			}
		}
		else if (IsPressed(action) && action.aName == 'hpasToggleModuleDown' && moduletype == 1)
		{
			switch( GroupID )
			{
				case 'none'               : GroupID = 'Enemy';                                ShowMsg( "Enemy Health Bar"     );  break;
				case 'WolfMedallion'      : GroupID = 'Enemy';                                ShowMsg( "Enemy Health Bar"     );  break;
				case 'MinimapandQuests'   : GroupID = 'WolfMedallion';                        ShowMsg( "Wolf Medallion"       );  break;
				case 'Buffs'              : GroupID = 'MinimapandQuests';    moduletype = 2;  ShowMsg( "Active Quests"        );  break;
				case 'ItemInfo'           : GroupID = 'Buffs';               moduletype = 2;  ShowMsg( "Radial Buffs"         );  break;
				case 'ControlsandConsole' : GroupID = 'ItemInfo';            moduletype = 2;  ShowMsg( "Damaged Items"        );  break;
				case 'Horse'              : GroupID = 'ControlsandConsole';  moduletype = 2;  ShowMsg( "Action Log"           );  break;
				case 'OxygenandBoat'      : GroupID = 'Horse';               moduletype = 2;  ShowMsg( "Horse Fear Bar"       );  break;
				case 'BossandComp'        : GroupID = 'OxygenandBoat';       moduletype = 2;  ShowMsg( "Boat Health"          );  break;
				case 'Enemy'              : GroupID = 'BossandComp';         moduletype = 2;  ShowMsg( "Companion Portrait"   );  break;
			}
		}
		else if (IsPressed(action) && action.aName == 'hpasToggleModuleDown' && moduletype == 2)
		{
			switch( GroupID )
			{
				case 'MinimapandQuests'   : moduletype = 1;  ShowMsg( "Minimap"           );  break;
				case 'Buffs'              : moduletype = 1;  ShowMsg( "Buffs"             );  break;
				case 'ItemInfo'           : moduletype = 1;  ShowMsg( "Item Info"         );  break;
				case 'ControlsandConsole' : moduletype = 1;  ShowMsg( "Controls Feedback" );  break;
				case 'Horse'              : moduletype = 1;  ShowMsg( "Horse Stamina Bar" );  break;
				case 'OxygenandBoat'      : moduletype = 1;  ShowMsg( "Oxygen Bar"        );  break;
				case 'BossandComp'        : moduletype = 1;  ShowMsg( "Boss Health Bar"   );  break;
			} 
		}
	}
	
	// Offset Modifier
	event OnOffsetModifiers( action : SInputAction ){}
	
	// Change Position
	event OnOffsetPos(action:SInputAction)
	{	
		var OffsetPos, OffsetPosMod, OffsetPosMod2 : float;
		
		OffsetPos = GetFloat( 'EditMode', 'OffsetPos' );
		OffsetPosMod = GetFloat( 'EditMode', 'OffsetPosMod' );
		OffsetPosMod2 = GetFloat( 'EditMode', 'OffsetPosMod2' );
		
		if (!isModOn() || !isEditOn || !GetString( 'Hud', 'HudVisibility' )) { return true; } 
		
		if (theInput.IsActionPressed('hpasOffsetModifier'))
		{
			if (IsPressed(action))
			{
				switch( action.aName )
				{
					case 'hpasAddX' : Offset(GroupID, moduletype, 'X', 'plus',  OffsetPosMod); break;
					case 'hpasRemX' : Offset(GroupID, moduletype, 'X', 'minus', OffsetPosMod); break;
					case 'hpasAddY' : Offset(GroupID, moduletype, 'Y', 'plus',  OffsetPosMod); break;
					case 'hpasRemY' : Offset(GroupID, moduletype, 'Y', 'minus', OffsetPosMod); break;
				}	
			}
		}
		else if (theInput.IsActionPressed('hpasOffsetModifier2'))
		{
			if (IsPressed(action))
			{
				switch( action.aName )
				{
					case 'hpasAddX' : Offset(GroupID, moduletype, 'X', 'plus',  OffsetPosMod2); break;
					case 'hpasRemX' : Offset(GroupID, moduletype, 'X', 'minus', OffsetPosMod2); break;
					case 'hpasAddY' : Offset(GroupID, moduletype, 'Y', 'plus',  OffsetPosMod2); break;
					case 'hpasRemY' : Offset(GroupID, moduletype, 'Y', 'minus', OffsetPosMod2); break;
				}	
			}
		}
		else if (IsPressed(action))
		{			
			switch( action.aName )
			{
				case 'hpasAddX' : Offset(GroupID, moduletype, 'X', 'plus',  OffsetPos); break;
				case 'hpasRemX' : Offset(GroupID, moduletype, 'X', 'minus', OffsetPos); break;
				case 'hpasAddY' : Offset(GroupID, moduletype, 'Y', 'plus',  OffsetPos); break;
				case 'hpasRemY' : Offset(GroupID, moduletype, 'Y', 'minus', OffsetPos); break;
			}		
		}
	}
	
	// Change Scale
	event OnOffsetScale( action : SInputAction )
	{
		var tolerance, OffsetScale, OffsetScaleMod, OffsetScaleMod2 : float;
	
		tolerance = 2.5f;	
		
		OffsetScale = GetFloat( 'EditMode', 'OffsetScale' );
		OffsetScaleMod = GetFloat( 'EditMode', 'OffsetScaleMod' );
		OffsetScaleMod2 = GetFloat( 'EditMode', 'OffsetScaleMod2' );
		
		if (!isModOn() || !isEditOn || !GetString( 'Hud', 'HudVisibility' )) { return true; } 
		
		if (theInput.IsActionPressed('hpasOffsetModifier'))
		{
			if (action.aName == 'hpasAddS' )
			{
				if (action.value > tolerance)
				{
					GetWitcherPlayer().TogglePreviousSign(); // To stop toggling signs on mouse scroll, do opposite of normal action
					Offset(GroupID, moduletype, 'S', 'plus', OffsetScaleMod);
				}
				Offset(GroupID, moduletype, 'S', 'plus', OffsetScaleMod);
			}
			else if (action.aName == 'hpasRemS')
			{
				if (action.value < -tolerance)
				{
					GetWitcherPlayer().ToggleNextSign(); 
					Offset(GroupID, moduletype, 'S', 'minus', OffsetScaleMod);
				}
				Offset(GroupID, moduletype, 'S', 'minus', OffsetScaleMod);	
			}
		}
		else if (theInput.IsActionPressed('hpasOffsetModifier2'))
		{
			if (action.aName == 'hpasAddS' )
			{
				if (action.value > tolerance)
				{
					GetWitcherPlayer().TogglePreviousSign(); 
					Offset(GroupID, moduletype, 'S', 'plus', OffsetScaleMod2);
				}
				Offset(GroupID, moduletype, 'S', 'plus', OffsetScaleMod2);
			}
			else if (action.aName == 'hpasRemS')
			{
				if (action.value < -tolerance)
				{
					GetWitcherPlayer().ToggleNextSign(); 
					Offset(GroupID, moduletype, 'S', 'minus', OffsetScaleMod2);
				}
				Offset(GroupID, moduletype, 'S', 'minus', OffsetScaleMod2);	
			}
		}
		else if (action.aName == 'hpasAddS' )
		{
			if (action.value > tolerance )
			{
				GetWitcherPlayer().TogglePreviousSign(); 
				Offset(GroupID, moduletype, 'S', 'plus', OffsetScale); 
			}
			Offset(GroupID, moduletype, 'S', 'plus', OffsetScale); 
		}
		else if (action.aName == 'hpasRemS')
		{
			if (action.value < -tolerance )
			{
				GetWitcherPlayer().ToggleNextSign();
				Offset(GroupID, moduletype, 'S', 'minus', OffsetScale); 
			}
			Offset(GroupID, moduletype, 'S', 'minus', OffsetScale);
		}
	}	
	
	// Initialize alternative inputs
	public function InitAltInputs() 
	{		
		// Choose HUD Module (Separate)
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasWolf'     );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasMinimap'  );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasQuests'   );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasBuffs'    );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasBuffsRM'  );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasItems'    );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasDamaged'  );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasControls' );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasConsole'  );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasHStamina' );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasHFear'    );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasOxygen'   );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasBoat'     );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasBoss'     );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasComp'     );
		theInput.RegisterListener( this, 'OnChooseModule', 'hpasEnemy'    );
	}
	
	// Choose Hud Module
	event OnChooseModule(action:SInputAction)
	{
		if (IsPressed(action) && isEditOn && isModOn() && GetString( 'Hud', 'HudVisibility' ))
		{
			switch( action.aName )
			{
				case 'hpasWolf'     : msg = "Wolf Medallion";     GroupID = 'WolfMedallion';      moduletype = 1; ShowMsg(msg); break;
				case 'hpasMinimap'  : msg = "Minimap"; 		      GroupID = 'MinimapandQuests';   moduletype = 1; ShowMsg(msg); break;
				case 'hpasQuests'   : msg = "Active Quests";      GroupID = 'MinimapandQuests';   moduletype = 2; ShowMsg(msg); break;
				case 'hpasBuffs'    : msg = "Buffs";              GroupID = 'Buffs';              moduletype = 1; ShowMsg(msg); break;
				case 'hpasBuffsRM'  : msg = "Radial Buffs";       GroupID = 'Buffs';              moduletype = 2; ShowMsg(msg); break;
				case 'hpasItems'    : msg = "Item Info";          GroupID = 'ItemInfo';           moduletype = 1; ShowMsg(msg); break;
				case 'hpasDamaged'  : msg = "Damaged Items";      GroupID = 'ItemInfo';           moduletype = 2; ShowMsg(msg); break;
				case 'hpasControls' : msg = "Controls Feedback";  GroupID = 'ControlsandConsole'; moduletype = 1; ShowMsg(msg); break;
				case 'hpasConsole'  : msg = "Action Log";         GroupID = 'ControlsandConsole'; moduletype = 2; ShowMsg(msg); break;
				case 'hpasHStamina' : msg = "Horse Stamina Bar";  GroupID = 'Horse';              moduletype = 1; ShowMsg(msg); break;
				case 'hpasHFear'    : msg = "Horse Fear Bar";     GroupID = 'Horse';              moduletype = 2; ShowMsg(msg); break;
				case 'hpasOxygen'   : msg = "Oxygen Bar";         GroupID = 'OxygenandBoat';      moduletype = 1; ShowMsg(msg); break;
				case 'hpasBoat'     : msg = "Boat Health";        GroupID = 'OxygenandBoat';      moduletype = 2; ShowMsg(msg); break;
				case 'hpasBoss'     : msg = "Boss Health Bar";    GroupID = 'BossandComp';        moduletype = 1; ShowMsg(msg); break;
				case 'hpasComp'     : msg = "Companion Portrait"; GroupID = 'BossandComp';        moduletype = 2; ShowMsg(msg); break;
				case 'hpasEnemy'    : msg = "Enemy Health Bar";   GroupID = 'Enemy';              moduletype = 1; ShowMsg(msg); break;
			}
		}
	}
}