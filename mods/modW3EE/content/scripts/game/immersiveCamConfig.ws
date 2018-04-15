/* Immersive Cam Control Script v 4.0 */

class icControl
{
	/* ------ IMMERSIVE CAM CONFIGURATION START --------------------------------------------------	
	Edit the default values as desired, but remember that small changes make big differences.
	For some variables, only certain values are valid.  Those values are explained in the variable's comments.
	-------------------------------------------------------------------------------------------- */
	
	//--- AUTO CENTERING ---
	// Horseback
	// 2.0 = disable on trot and lower  // 3.0 = disable on canter and lower  // 4.0 = disable always
	default hbAutoRot = 2.0;
	// Exploration
	default expAutoRot = false;			// true = auto centering ON  |  false = auto centering OFF
	// Sprinting
	default sprintAutoRot = true;		// true = auto centering ON  |  false = auto centering OFF
	// Sailing
	default sailAutoRot = true;			// true = auto centering ON  |  false = auto centering OFF
	
	//--- FOV ---
	default expFOV 			= 60.0f;
	default hbFOV			= 60.0f;
	
	//--- HEADTRACKING ----
	default headTracking 	= true;		// true = headtracking ON | false = headtracking OFF
	
	// The following two settings are only used if headTracking = true
	default extHTDis 		= 4.0;		// Exterior look at radius  - The higher the number, the farther away people can be for Geralt to look at them.
	default intHTDis 		= 2.5;		// Interior look at radius	- The higher the number, the farther away people can be for Geralt to look at them.

	
	//--- CAMERA CONFIGURATIONS ---
	
	// Exploration Camera
	default expOffset 		= 0.25;		// increase = right   |  decrease = left  		( vanilla 0 ) 
	default expDepth 		= 1.35;		// increase = zoom in |  decrease = zoom out 	( vanilla 0 )
	default expHeight 		= 0.65;		// increase = higher  |  decrease = lower  		( vanilla 0 ) 
	
	// Interior Camera
	default noInteriorCamChange = true; // true = exploration cam does not change upon entering buildings 
	
	//The following interior camera settings are not used if noInteriorCamChange = true
	default intOffset 		= 0.3;		// increase = right   |  decrease = left		 ( vanilla 0.3 )
	default intDepth 		= 2.0;		// increase = zoom in |  decrease = zoom out	
	default intHeight 		= 0.2;		// increase to raise  |  decrease to lower		 ( vanilla 0.3 )
	
	// Sprinting Camera
	default sprintMode		= 1;		// 1 = sprint matches exploration, but slightly zoomed out
										// 2 = vanilla sprint cam (centered and zoomed out)
										// 3 = custom ( uses custom sprint values defined below )
	default sprintOffset	= 0.0;		// increase = right   |  decrease = left  		( vanilla 0 ) 
	default sprintDepth		= 0.0;		// increase = zoom in |  decrease = zoom out 	( vanilla 0 )
	default sprintHeight	= 0.0;		// increase = higher  |  decrease = lower  		( vanilla 0 )
	
	// Horseback Camera
	default hbDistance 		= 2.5;		// Walk and Trot Camera Distance - increase to zoom out | 	decrease to zoom in	 ( vanilla  2.4 )
	default hbCanterDis 	= 2.5;		// Canter Camera Distance - increase to zoom out | 	decrease to zoom in
	default hbGallopDis 	= 2.5;		// Gallop Camera Distance - increase to zoom out | 	decrease to zoom in
	default hbCombatDis 	= 2.8;		// Combat Camera Distance - increase to zoom out | 	decrease to zoom in
	
	default hbOffset 		= 0.0;		// increase = right   |  decrease = left  		( vanilla 0 ) 
	default hbDepth 		= 0.0;		// increase = zoom in |  decrease = zoom out 	( vanilla 0 )
	default hbHeight 		= 0.0;		// increase = higher  |  decrease = lower  		( vanilla 0 )
	
	// Sailing Camera
	default sailOffset = 	0.2;		// increase = right   |  decrease = left  	(Vanilla 0)	
	default sailDepth  = 	1.9;		// increase = closer  |  decrease = farther (Vanilla 0)
	default sailHeight = 	0.3;		// increase = higher  |  decrease = lower  	(Vanilla 0)
	default sailPitch  =	25.0;		// The higher the value, the farther the camera can be tilted skywards.
	
	// Witcher Sense Cameras 
	default witcherSenseZoom = true; // Setting this to false will disable Witcher Sense camera zoom 
	
	//The following Witcher Sense camera settings are only used if noWitcherSenseZoom = false
	// Exterior Witcher Sense Camera 
	default eWSOffset 		= 0.25;		// increase = right   |  decrease = left		( vanilla  0.5 )	
	default eWSDepth 		= 1.8;		// increase = zoom in |  decrease = zoom out	( vanilla  2.0 )
	default eWSHeight 		= 0.35;		// increase = higher  |  decrease = lower		( vanilla  0.3 )
	
	// Interior Witcher Sense Camera 
	default iWSOffset		= 0.30;		// increase = right   |  decrease = left		( vanilla  0.5 )				
	default iWSDepth 		= 2.15;		// increase = zoom in |  decrease = zoom out	( vanilla  2.3 )
	default iWSHeight 		= 0.25;		// increase = higher  |  decrease = lower		( vanilla  0.5 )

	// Clue Investigation Camera
	default clueOffset		= 0.6;		// increase = right   |  decrease = left		( vanilla  0.7 )
	default clueDepth		= 4.0;		// increase = zoom in |  decrease = zoom out	( vanilla  0.0 )
	default clueHeight		= -1.5;		// increase = higher  |  decrease = lower		( vanilla  0.0 )
	
	// Combat Camera 
	default comLock			= false;	// true = camera doesn't zoom in and out during combat - false = vanilla combat camera movements
	default comOffset		= 0.25;		// increase = right   |  decrease = left  		( vanilla 0 )	
	default comDepth 		= 1.35;		// increase = zoom in |  decrease = zoom out	( vanilla 0 )
	default comHeight 		= 0.65;		// increase = higher  |  decrease = lower  		( vanilla 0 )
	default hlOffset		= 0.25;		// increase = right   |  decrease = left  		( hard-lock / vanilla 0 )	
	default hlDepth 		= 1.35;		// increase = zoom in |  decrease = zoom out	( hard-lock / vanilla 0 )
	default hlHeight 		= 0.65;		// increase = higher  |  decrease = lower  		( hard-lock / vanilla 0 )
	
	// Aim/Throw Camera  
	/* If atRotate is set to true, Geralt will auto rotate to the camera facing.  
	This looks odd when the cam is zoomed out far enough to see his legs. */
	   
	default  atRotate 		= false;	// ( vanilla  true )
	default atOffset		= 0.7;		// increase = right   |  decrease = left  		( vanilla 0.43 )	
	default atDepth 		= -0.6;		// increase = zoom in |  decrease = zoom out	( vanilla 0.52 )
	default atHeight 		= -0.1;		// increase = higher  |  decrease = lower  		( vanilla 0.22 )
	
	// Igni Firestream Camera 
	default fsOffset		= 0.95;		// increase = right   |  decrease = left  		( vanilla 0.65 )	
	default fsDepth 		= -0.5;		// increase = zoom in |  decrease = zoom out	( vanilla 1.8 )
	default fsHeight 		= 0;		// increase = higher  |  decrease = lower  		( vanilla 0.4 )
	
	/////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////
	//--- SLOW MOTION COMBAT CONFIGURATION -----
	default critSloMoCam	= false;	// true = ON | false = OFF
	
	// The following settings are only used if critSloMoCam = true 
	// Set your 'Slow Motion on Critical Hit Chance' here.
	default criticalHitSlowMoChance 	= 50;
		
	// Set your 'Slow Motion Factor' for the individual action here.
	default aardSlowMoFactor			= 0.5f;		// Aard Sweep
	default igniSlowMoFactor			= 0.5f;		// Igni Firestream
	default dodgeRollSlowMoFactor 		= 1.0f;
	default evadeStepSlowMoFactor 		= 1.0f;
	default counterAttackSlowMoFactor 	= 0.5f;
	default criticalHitSlowMoFactor 	= 0.2f;
	default dismemberSlowMoFactor 		= 0.2;
	
	/////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////
	// --- IMMERSIVE MEDITATION CONFIGURATION
	/* Immersive Meditation configuration does nothing unless you have the optional add-on mod, Immersive Meditation, installed. */
	
	default medOffset		= -0.55;	// increase = right   |  decrease = left
	default medDepth		= 1.20;		// increase = zoom in |  decrease = zoom out
	default medHeight		= 0.53;		// increase = higher  |  decrease = lower
	
	default medEndFacing	= 230;		// This number determines the ending camera facing during meditation.  180 = the camera facing straight back 
	default medRotSpeed		= 0.2;		// The higher this number, the faster the camera rotates to your end facing target
	default medPitch		= -1;		// Negative numbers set the camera to look down on Geralt.  Positive numbers set the camera to look up at Geralt.
	default medHPS			= 1;		// The number of game hours passed per real time second of meditation.
	default useCampfire		= true;		// Set to false to prevent Geralt from making a campfire when meditating outside.
	default medFreeCam		= false;	// Set to true to allow free control of the camera rotation during meditation.
	
	/////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////
	// --- IMMERSIVE MOTION CONFIGURATION
	/* Immersive Motion configuration does nothing unless you have the optional add-on mod, Immersive Motion for Gamepads, installed. */
	
	default inputAdj		= 1.0;
	
	/* ---- IMMERSIVE CAM CONFIGURATION END (DO NOT CHANGE ANYTHING BELOW THIS LINE) -----    */
	
	////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////
	
	private var attackAction 				: W3Action_Attack;
	private var weaponId					: SItemUniqueId;
	private var actorAttacker 				: CActor;
	private var playerAttacker				: CR4Player;
	private var actorVictim 				: CActor;	

	public  var aardSlowMoFactor 			: float;
	public  var igniSlowMoFactor 			: float;
	private var dodgeRollSlowMoFactor 		: float;
	private var evadeStepSlowMoFactor 		: float;
	private var counterAttackSlowMoFactor 	: float;
	private var criticalHitSlowMoFactor		: float;
	private var dismemberSlowMoFactor		: float;
	
	private var criticalHitSlowMoChance		: Int32;
	
	private var rolling 					: string;
	private var evading 					: string;
	private var counterattack 				: string;
	private var criticalhit 				: string;
	private var dismember					: string;
	
	public var inputAdj						: float;
	
	public var headTracking, critSloMoCam, witcherSenseZoom 								: bool;
	public var noInteriorCamChange, comLock, expAutoRot, sailAutoRot, sprintAutoRot			: bool;
	public var useCampfire, medFreeCam														: bool;
	public var extHTDis, intHTDis															: float;
	public var expFOV, hbFOV, sprintFOV														: float;
	public var expOffset, expDepth, expHeight 												: float;
	public var comOffset, comDepth, comHeight 												: float;
	public var hlOffset, hlDepth, hlHeight 													: float;
	public var intOffset, intDepth, intHeight 												: float;
	public var hbDistance, hbCanterDis, hbGallopDis, hbCombatDis, hbAutoRot 				: float;
	public var hbOffset, hbDepth, hbHeight 													: float;
	public var eWSOffset, eWSDepth, eWSHeight, iWSOffset, iWSDepth, iWSHeight 				: float;
	public var clueOffset, clueDepth, clueHeight											: float;
	public var atRotate, fsRotate															: bool;	
	public var sailOffset, sailDepth, sailHeight, sailPitch									: float;
	public var atOffset, atDepth, atHeight, fsOffset, fsDepth, fsHeight 					: float;
	public var medOffset, medDepth, medHeight, medRotSpeed, medPitch, medEndFacing, medHPS	: float;
	public var sprintMode, sprintOffset, sprintDepth, sprintHeight							: float;
	
	private var igconfig					: CInGameConfigWrapper;
	
	/* Immersive Cam functions */
	
	private function InitializeMenuSettings()
	{
		igconfig = theGame.GetInGameConfigWrapper();
		
		igconfig.SetVarValue('ImmMotion', 'InputAdj', FloatToString( inputAdj ) );
		igconfig.SetVarValue( 'ImmersiveCamPositionsHorse', 'hbAutoRot', (int)hbAutoRot - 2); 
		igconfig.SetVarValue('ImmersiveCamPositionsExploration', 'expAutoRot', expAutoRot );
		igconfig.SetVarValue('ImmersiveCamPositionsSailing', 'sailAutoRot', sailAutoRot );
		igconfig.SetVarValue('HT', 'Headtracking', headTracking );
		igconfig.SetVarValue('SlowMotionCam', 'CritSloMoCam', critSloMoCam );
		igconfig.SetVarValue('ImmersiveCamPositionsWS', 'WitcherSenseZoom', witcherSenseZoom );
		igconfig.SetVarValue('ImmersiveCamPositionsExploration', 'noInteriorCamChange', noInteriorCamChange);
		igconfig.SetVarValue( 'HT', 'extHTDis', FloatToString( extHTDis ) ); 
		igconfig.SetVarValue( 'HT', 'intHTDis', FloatToString( intHTDis ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsExploration', 'expFOV', FloatToString( expFOV ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsHorse', 'hbFOV', FloatToString( hbFOV ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsExploration', 'sprintFOV', FloatToString( sprintFOV ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsExploration', 'expOffset', FloatToString( expOffset ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsExploration', 'expDepth', FloatToString( expDepth ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsExploration', 'expHeight', FloatToString( expHeight ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsExploration', 'intDepth', FloatToString( intDepth ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsExploration', 'intOffset', FloatToString( intOffset ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsExploration', 'intHeight', FloatToString( intHeight ) );
		igconfig.SetVarValue('ImmersiveCamPositionsSprint', 'sprintAutoRot', sprintAutoRot );	
		igconfig.SetVarValue('ImmersiveCamPositionsSprint', 'sprintMode', FloatToString( sprintMode - 1.0f )  );
		igconfig.SetVarValue('ImmersiveCamPositionsSprint', 'sprintOffset', FloatToString( sprintOffset ) );
		igconfig.SetVarValue('ImmersiveCamPositionsSprint', 'sprintDepth', FloatToString( sprintDepth ) );
		igconfig.SetVarValue('ImmersiveCamPositionsSprint', 'sprintHeight', FloatToString( sprintHeight ) );
		igconfig.SetVarValue( 'ImmersiveCamPositionsHorse', 'hbDistance', FloatToString( hbDistance ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsHorse', 'hbCanterDis', FloatToString( hbCanterDis ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsHorse', 'hbGallopDis', FloatToString( hbGallopDis ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsHorse', 'hbCombatDis', FloatToString( hbCombatDis ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsHorse', 'hbOffset', FloatToString( hbOffset ) );
		igconfig.SetVarValue( 'ImmersiveCamPositionsHorse', 'hbDepth', FloatToString( hbDepth ) );	
		igconfig.SetVarValue( 'ImmersiveCamPositionsHorse', 'hbHeight', FloatToString( hbHeight ) );
		igconfig.SetVarValue( 'ImmersiveCamPositionsSailing', 'sailPitch', FloatToString( sailPitch ) );
		igconfig.SetVarValue( 'ImmersiveCamPositionsSailing', 'sailOffset', FloatToString( sailOffset ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsSailing', 'sailDepth', FloatToString( sailDepth ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsSailing', 'sailHeight', FloatToString( sailHeight ) );
		igconfig.SetVarValue( 'ImmersiveCamPositionsWS', 'eWSOffset', FloatToString( eWSOffset ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsWS', 'eWSDepth', FloatToString( eWSDepth ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsWS', 'eWSHeight', FloatToString( eWSHeight ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsWS', 'iWSOffset', FloatToString( iWSOffset ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsWS', 'iWSDepth', FloatToString( iWSDepth ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsWS', 'iWSHeight', FloatToString( iWSHeight ) );
		igconfig.SetVarValue( 'ImmersiveCamPositionsClue', 'clueOffset', FloatToString( clueOffset ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsClue', 'clueDepth', FloatToString( clueDepth ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsClue', 'clueHeight', FloatToString( clueHeight ) );
		igconfig.SetVarValue('ImmersiveCamPositionsCombat', 'comLock', comLock );		
		igconfig.SetVarValue( 'ImmersiveCamPositionsCombat', 'comOffset', FloatToString( comOffset ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsCombat', 'comDepth', FloatToString( comDepth ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsCombat', 'comHeight', FloatToString( comHeight ) );
		igconfig.SetVarValue( 'ImmersiveCamPositionsCombat', 'hlOffset', FloatToString( hlOffset ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsCombat', 'hlDepth', FloatToString( hlDepth ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsCombat', 'hlHeight', FloatToString( hlHeight ) );
		igconfig.SetVarValue('ImmersiveCamPositionsAT', 'atRotate', atRotate );
		igconfig.SetVarValue( 'ImmersiveCamPositionsAT', 'atOffset', FloatToString( atOffset ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsAT', 'atDepth', FloatToString( atDepth ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsAT', 'atHeight', FloatToString( atHeight ) );
		igconfig.SetVarValue( 'ImmersiveCamPositionsFS', 'fsOffset', FloatToString( fsOffset ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsFS', 'fsDepth', FloatToString( fsDepth ) ); 
		igconfig.SetVarValue( 'ImmersiveCamPositionsFS', 'fsHeight', FloatToString( fsHeight ) );
		igconfig.SetVarValue( 'SlowMotionCam', 'aardSlowMoFactor', FloatToString( aardSlowMoFactor ) );
		igconfig.SetVarValue( 'SlowMotionCam', 'igniSlowMoFactor', FloatToString( igniSlowMoFactor ) ); 
		igconfig.SetVarValue( 'SlowMotionCam', 'criticalHitSlowMoChance', IntToString( criticalHitSlowMoChance ) );
		igconfig.SetVarValue( 'SlowMotionCam', 'dodgeRollSlowMoFactor', FloatToString( dodgeRollSlowMoFactor ) ); 
		igconfig.SetVarValue( 'SlowMotionCam', 'evadeStepSlowMoFactor', FloatToString( evadeStepSlowMoFactor ) ); 
		igconfig.SetVarValue( 'SlowMotionCam', 'counterAttackSlowMoFactor', FloatToString( counterAttackSlowMoFactor ) ); 
		igconfig.SetVarValue( 'SlowMotionCam', 'criticalHitSlowMoFactor', FloatToString( criticalHitSlowMoFactor ) ); 
		igconfig.SetVarValue( 'SlowMotionCam', 'dismemberSlowMoFactor', FloatToString( dismemberSlowMoFactor ) ); 
		
		igconfig.SetVarValue( 'ImmersiveCam', 'v42Initialized', true); 
	}

	public function SetImmCamVars()
	{
		InitializeImmersiveMeditation();
		
		// If values already exist in user.settings, read and set those values in icControl.
		// If the values are missing, the GUI is not set, so set it.
		if ( !igconfig.GetVarValue('ImmersiveCam', 'v42Initialized') )  
		{
			InitializeMenuSettings();
			return;
		}
		
		inputAdj = 	StringToFloat( igconfig.GetVarValue( 'ImmMotion', 'InputAdj' ) );
		hbAutoRot = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsHorse', 'hbAutoRot' ) )+ 2.0;
		expAutoRot = igconfig.GetVarValue( 'ImmersiveCamPositionsExploration', 'expAutoRot' );
		sailAutoRot = igconfig.GetVarValue( 'ImmersiveCamPositionsSailing', 'sailAutoRot' );
		sprintAutoRot = igconfig.GetVarValue( 'ImmersiveCamPositionsSprint', 'sprintAutoRot' );
		headTracking = igconfig.GetVarValue('HT', 'Headtracking');
		critSloMoCam = igconfig.GetVarValue('SlowMotionCam', 'CritSloMoCam');
		witcherSenseZoom = igconfig.GetVarValue('ImmersiveCamPositionsWS', 'WitcherSenseZoom');
		noInteriorCamChange = igconfig.GetVarValue('ImmersiveCamPositionsExploration', 'noInteriorCamChange');
		extHTDis = StringToFloat( igconfig.GetVarValue( 'HT', 'extHTDis' ) );
		intHTDis = StringToFloat( igconfig.GetVarValue( 'HT', 'intHTDis' ) );
		expFOV = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsExploration', 'expFOV' ) );
		hbFOV = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsHorse', 'hbFOV' ) );
		sprintFOV = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsExploration', 'sprintFOV' ) );
		expOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsExploration', 'expOffset' ) );
		expDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsExploration', 'expDepth' ) );
		expHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsExploration', 'expHeight' ) );
		intDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsExploration', 'intDepth' ) );
		intOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsExploration', 'intOffset' ) );
		intHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsExploration', 'intHeight' ) );
		sprintMode = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsSprint', 'sprintMode') ) + 1;
		sprintOffset = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsSprint', 'sprintOffset') );
		sprintDepth = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsSprint', 'sprintDepth') );
		sprintHeight = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsSprint', 'sprintHeight') );
		hbDistance = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsHorse', 'hbDistance' ) );
		hbCanterDis = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsHorse', 'hbCanterDis' ) );
		hbGallopDis = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsHorse', 'hbGallopDis' ) );
		hbCombatDis = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsHorse', 'hbCombatDis' ) );
		hbOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsHorse', 'hbOffset' ) );
		hbDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsHorse', 'hbDepth' ) );
		hbHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsHorse', 'hbHeight' ) );
		sailPitch = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsSailing', 'sailPitch' ) );
		sailOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsSailing', 'sailOffset' ) );
		sailDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsSailing', 'sailDepth' ) );
		sailHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsSailing', 'sailHeight' ) );
		eWSOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsWS', 'eWSOffset' ) );
		eWSDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsWS', 'eWSDepth' ) );
		eWSHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsWS', 'eWSHeight' ) );
		iWSOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsWS', 'iWSOffset' ) );
		iWSDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsWS', 'iWSDepth' ) );
		iWSHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsWS', 'iWSHeight' ) );
		clueOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsClue', 'clueOffset' ) );
		clueDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsClue', 'clueDepth' ) );
		clueHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsClue', 'clueHeight' ) );
		comLock = igconfig.GetVarValue('ImmersiveCamPositionsCombat', 'comLock');
		comOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsCombat', 'comOffset' ) );
		comDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsCombat', 'comDepth' ) );
		comHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsCombat', 'comHeight' ) );
		hlOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsCombat', 'hlOffset' ) );
		hlDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsCombat', 'hlDepth' ) );
		hlHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsCombat', 'hlHeight' ) );
		atRotate = igconfig.GetVarValue('ImmersiveCamPositionsAT', 'atRotate');
		atOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsAT', 'atOffset' ) );
		atDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsAT', 'atDepth' ) );
		atHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsAT', 'atHeight' ) );
		fsOffset = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsFS', 'fsOffset' ) );
		fsDepth = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsFS', 'fsDepth' ) );
		fsHeight = StringToFloat( igconfig.GetVarValue( 'ImmersiveCamPositionsFS', 'fsHeight' ) );
		criticalHitSlowMoChance = StringToInt( igconfig.GetVarValue( 'SlowMotionCam', 'criticalHitSlowMoChance' ) );
		aardSlowMoFactor = StringToFloat( igconfig.GetVarValue( 'SlowMotionCam', 'aardSlowMoFactor' ) );
		igniSlowMoFactor = StringToFloat( igconfig.GetVarValue( 'SlowMotionCam', 'igniSlowMoFactor' ) );
		dodgeRollSlowMoFactor = StringToFloat( igconfig.GetVarValue( 'SlowMotionCam', 'dodgeRollSlowMoFactor' ) );
		evadeStepSlowMoFactor = StringToFloat( igconfig.GetVarValue( 'SlowMotionCam', 'evadeStepSlowMoFactor' ) );
		counterAttackSlowMoFactor = StringToFloat( igconfig.GetVarValue( 'SlowMotionCam', 'counterAttackSlowMoFactor' ) );
		criticalHitSlowMoFactor = StringToFloat( igconfig.GetVarValue( 'SlowMotionCam', 'criticalHitSlowMoFactor' ) );
		dismemberSlowMoFactor = StringToFloat( igconfig.GetVarValue( 'SlowMotionCam', 'dismemberSlowMoFactor' ) );
	}
	
	private function InitializeImmersiveMeditation()
	{
		if( StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsMeditation', 'medRotSpeed') ) >= 0.1 )
		{
			medFreeCam = igconfig.GetVarValue('ImmersiveCamPositionsMeditation', 'medFreeCam');
			useCampfire = igconfig.GetVarValue('ImmersiveCamPositionsMeditation', 'useCampfire');
			medOffset = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsMeditation', 'medOffset') );
			medDepth = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsMeditation', 'medDepth') );
			medHeight = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsMeditation', 'medHeight') );
			medPitch = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsMeditation', 'medPitch') );
			medEndFacing = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsMeditation', 'medEndFacing') );
			medRotSpeed = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsMeditation', 'medRotSpeed') );
			medHPS = StringToFloat( igconfig.GetVarValue('ImmersiveCamPositionsMeditation', 'medHPS') );
		}
		else
		{
			igconfig.SetVarValue('ImmersiveCamPositionsMeditation', 'medFreeCam', medFreeCam );
			igconfig.SetVarValue('ImmersiveCamPositionsMeditation', 'useCampfire', useCampfire );
			igconfig.SetVarValue('ImmersiveCamPositionsMeditation', 'medOffset', FloatToString( medOffset ) );
			igconfig.SetVarValue('ImmersiveCamPositionsMeditation', 'medDepth', FloatToString( medDepth ) );
			igconfig.SetVarValue('ImmersiveCamPositionsMeditation', 'medHeight', FloatToString( medHeight ) );
			igconfig.SetVarValue('ImmersiveCamPositionsMeditation', 'medPitch', FloatToString( medPitch ) );
			igconfig.SetVarValue('ImmersiveCamPositionsMeditation', 'medEndFacing', FloatToString( medEndFacing ) );
			igconfig.SetVarValue('ImmersiveCamPositionsMeditation', 'medRotSpeed', FloatToString( medRotSpeed ) );
			igconfig.SetVarValue('ImmersiveCamPositionsMeditation', 'medHPS', FloatToString( medHPS ) );
		}
	}
	
	public function RegisterImmCamVars( init : bool )  
	{
		if( !igconfig )
			igconfig = theGame.GetInGameConfigWrapper();
			
		if ( init )
			SetImmCamVars();
		else
			thePlayer.AddTimer('SetImmCamVars', 0.5, false);
	}
	
	private function RegisterImmCamInputs()
	{	
		theInput.RegisterListener( this, 'OnCamOffsetDecrease', 'CamOffsetDecrease' );
		theInput.RegisterListener( this, 'OnCamOffsetIncrease', 'CamOffsetIncrease' );
		theInput.RegisterListener( this, 'OnCamDepthDecrease', 'CamDepthDecrease' );
		theInput.RegisterListener( this, 'OnCamDepthIncrease', 'CamDepthIncrease' );
		theInput.RegisterListener( this, 'OnCamHeightDecrease', 'CamHeightDecrease' );
		theInput.RegisterListener( this, 'OnCamHeightIncrease', 'CamHeightIncrease' );
		theInput.RegisterListener( this, 'OnCamReset', 'CamReset' );
		theInput.RegisterListener( this, 'OnCamSet', 'CamSet' );
	}
	
	public function icInit()
	{
		RegisterImmCamInputs();
		RegisterImmCamVars( true );
	}
	
	event OnCamReset ( action : SInputAction )
	{
		if( thePlayer.GetCurrentStateName() == 'HorseRiding' )
			thePlayer.ResetHBCam();
		else if( thePlayer.IsInCombat() )
			thePlayer.ResetComCam();
		else
			thePlayer.ResetExpCam();
	}
	
	event OnCamSet ( action : SInputAction )
	{
		if( thePlayer.GetCurrentStateName() == 'HorseRiding' )
			thePlayer.SetHBCam();
		else if( thePlayer.IsInCombat() )
			thePlayer.SetComCam();
		else
			thePlayer.SetExpCam();
	}
	
	/* Critical Slow Motion Combat functions, by KNG */
	
	public function Init(optional act : W3DamageAction, optional isCriticalHit : bool, optional isRolling : bool, optional evadeTarget : CActor, optional dismember : bool)
	{
					
		CriticalSlowMotionCameraMovementController(isRolling, evadeTarget);
		CriticalSlowMotionCameraCombatController(act, isCriticalHit, dismember);
			
	}
		
	private function CriticalSlowMotionCameraMovementController(isRolling : bool, evadeTarget : CActor)
	{
		if( thePlayer.IsSlowMoActive() )
			return;
			
		if (isRolling) 
		{
			thePlayer.SetSlowMoActive(true);
			SlowMoController(true, "rolling");
			thePlayer.AddTimer('DeactivateSlowMoCam', 0.3, false);
		} 
		else if (evadeTarget) 
		{
			thePlayer.SetSlowMoActive(true);
			SlowMoController(true, "evading");
			thePlayer.AddTimer('DeactivateSlowMoCam', 0.3, false);
		}
	
	}
		
	private function CriticalSlowMotionCameraCombatController(act : W3DamageAction, isCriticalHit : bool, optional dismember : bool) 
	{
	
		attackAction 		= (W3Action_Attack)act;
		weaponId 			= attackAction.GetWeaponId();
		actorAttacker		= (CActor)act.attacker;
		playerAttacker 		= (CR4Player)act.attacker;
		actorVictim 		= (CActor)act.victim;
	
		if( thePlayer.IsSlowMoActive() )
			return;
	
		if( actorVictim == GetWitcherPlayer() && attackAction.IsCountered() && act.DealsPhysicalOrSilverDamage()) 
		{
			thePlayer.SetSlowMoActive(true);
			SlowMoController(true, "counterattack");
			thePlayer.AddTimer('DeactivateSlowMoCam', 0.3, false);
		}					
			
		if( actorAttacker == GetWitcherPlayer() && act.DealsPhysicalOrSilverDamage() && attackAction.IsCriticalHit()) 
		{
		
			if ( attackAction.IsActionRanged() || thePlayer.IsWeaponHeld('fist') )  
			{
				return;			
			} 
			else
			{
				thePlayer.SetSlowMoActive(true);
				SlowMoController(true, "criticalhit");
				thePlayer.AddTimer('DeactivateSlowMoCam', 0.3, false);
			}
		}
				
		if (dismember)
		{
			thePlayer.SetSlowMoActive(true);
			SlowMoController(true, "dismember");
			thePlayer.AddTimer('DeactivateSlowMoCam', 0.3, false);
		}
	}
		
	public function RandomFactor() : Int32 
	{
		
		var i : Int32;
		var Min : Int32;
		var Max : Int32;
		var Value : Int32;
			
		i = 0;
	
		Min = 0;
		Max = 100;
			
		for(i = 0; i < 1; i+=1) 
		{
			Value = RandRange(Max, Min);	
		}
			
			return Value;

	}
				
	public function SlowMoController (isActive : bool, optional actionname : string)
	{
		rolling 		= "rolling";
		evading 		= "evading";
		counterattack 	= "counterattack";
		criticalhit		= "criticalhit";
		dismember		= "dismember";
	
		if (isActive && actionname == rolling && dodgeRollSlowMoFactor < 1.0) 
		{
			//thePlayer.SetSlowMoActive(true);		
			theGame.SetTimeScale(dodgeRollSlowMoFactor, theGame.GetTimescaleSource(7), theGame.GetTimescalePriority(7), true);	
		} 
			
		if (isActive && actionname == evading && evadeStepSlowMoFactor < 1.0) 
		{			
			//thePlayer.SetSlowMoActive(true);
			theGame.SetTimeScale(evadeStepSlowMoFactor, theGame.GetTimescaleSource(7), theGame.GetTimescalePriority(7), true);						
		} 
			
		if (isActive && actionname == counterattack && counterAttackSlowMoFactor < 1.0) 
		{
			//thePlayer.SetSlowMoActive(true);
			theGame.SetTimeScale(counterAttackSlowMoFactor, theGame.GetTimescaleSource(7), theGame.GetTimescalePriority(7), true);
		}			
			
		if (isActive && actionname == criticalhit && RandomFactor() < criticalHitSlowMoChance && criticalHitSlowMoFactor < 1.0) 
		{
			//thePlayer.SetSlowMoActive(true);						
			theGame.SetTimeScale(criticalHitSlowMoFactor, theGame.GetTimescaleSource(7), theGame.GetTimescalePriority(7), true);			
		}
			
		if (isActive && actionname == dismember && dismemberSlowMoFactor < 1.0) 
		{
			//thePlayer.SetSlowMoActive(true);												
			theGame.SetTimeScale(dismemberSlowMoFactor, theGame.GetTimescaleSource(7), theGame.GetTimescalePriority(7), true);			
		}
			
		if (!isActive) 
		{
			
			theGame.RemoveTimeScale(theGame.GetTimescaleSource(7));
				
		}
						
	}
}