class CHPAS_Pos
{
	private var GroupID, XVarID, YVarID : name; 
	private var Cx, Cy : float;
	
	// Calculate Hud Module Position
	private function Pos( axis : name ) : float
	{	
		var X, Y, N        : float;
		
		N = 0.0025; // Normalizing constant for menu slider range. Slider range * N = 1
		
		if (axis == 'X') 
		{ 
			X = GetFloat(GroupID, XVarID); // Get X value
		
			return (X*N+Cx)*1920;			
		} 	
		else 
		{ 
			Y = GetFloat(GroupID, YVarID); // Get Y value
			
			return -((Y*N-1)+Cy)*1080; // Minus sign and -1 are to make larger values equal higher positioning, i.e flip vertical axis			
		}
	}
	
	// Wolf Medallion
	public function WolfHead( axis : name ) : float 
	{  
		GroupID = 'WolfMedallion';
		XVarID  = 'tempXWolfHead'; Cx = -0.1;
		YVarID  = 'tempYWolfHead'; Cy = 0.05;

		return Pos( axis );
	}
	
	// Minimap
	public function Minimap( axis : name ) : float 
	{ 	    
		GroupID = 'MinimapandQuests';
		XVarID  = 'tempXMinimap2'; Cx = 0.05;
		YVarID  = 'tempYMinimap2'; Cy = 0.125;

		return Pos( axis );
	}
	
	// Active Quests
	public function Quests( axis : name ) : float 
	{ 	    
		GroupID = 'MinimapandQuests';
		XVarID  = 'tempXQuests'; Cx = 0.05;
		YVarID  = 'tempYQuests'; Cy = 0.3; 

		return Pos( axis );
	}	
	
	// Buffs
	public function Buffs( axis : name ) : float 
	{ 	    
		GroupID = 'Buffs';
		
		if ( IsRadialMenuOpened() ) 
		{
			XVarID  = 'tempXBuffsRM'; 
			YVarID  = 'tempYBuffsRM'; 
		}
		else
		{
			XVarID  = 'tempXBuffs'; 
			YVarID  = 'tempYBuffs'; 
		}
		
		if ( IsBuffsMinimal() )
		{
			Cx = 0.095;
			Cy = 0.045;
		}
		else 
		{
			Cx = 0.215;
			Cy = 0.035;
		}
		
		return Pos( axis );
	}
	
	// Item Info
	public function ItemInfo( axis : name ) : float 
	{         
		GroupID = 'ItemInfo';
		XVarID  = 'tempXItemInfo'; Cx = -0.06;         
		YVarID  = 'tempYItemInfo'; Cy = -0.1;           

		return Pos( axis );
	}	
	
	// Damaged Items
	public function Damaged( axis : name ) : float 
	{ 	    
		GroupID = 'ItemInfo';
		XVarID  = 'tempXDamagedItems'; Cx = -0.0175;   
		YVarID  = 'tempYDamagedItems'; Cy = 0.0225;     

		return Pos( axis );
	}	
	
	// Controls Feedback
	public function Controls( axis : name ) : float 
	{ 	 
		GroupID = 'ControlsandConsole';
		XVarID  = 'tempXControlsFeedback'; Cx = 0.03;   
		YVarID  = 'tempYControlsFeedback'; Cy = -0.05;   

		return Pos( axis );
	}
	
	// Action Log
	public function Console( axis : name ) : float 
	{ 	    
		GroupID = 'ControlsandConsole';
		XVarID  = 'tempXConsole'; Cx = -0.05;           
		YVarID  = 'tempYConsole'; Cy = 0.01;             

		return Pos( axis );
	}		
	
	// Horse Stamina Bar
	public function HStamina( axis : name ) : float 
	{     
		GroupID = 'Horse';
		XVarID  = 'tempXHorseStaminaBar'; Cx = 0;   
		YVarID  = 'tempYHorseStaminaBar'; Cy = 0.025;    

		return Pos( axis );
	}
	
	// Horse Fear Bar
	public function HFear( axis : name ) : float 
	{ 	    
		GroupID = 'Horse';
		XVarID  = 'tempXHorsePanicBar'; Cx = 0;     
		YVarID  = 'tempYHorsePanicBar'; Cy = 0.025;      

		return Pos( axis );
	}
	
	// Oxygen Bar
	public function Oxygen( axis : name ) : float 
	{ 	    
		GroupID = 'OxygenandBoat';
		XVarID  = 'tempXOxygenBar'; Cx = 0;   
		YVarID  = 'tempYOxygenBar'; Cy = 0.025;    

		return Pos( axis );
	}
	
	// Boat Health
	public function Boat( axis : name ) : float 
	{ 	    
		GroupID = 'OxygenandBoat';
		XVarID  = 'tempXBoatHealth'; Cx = -0.02;  
		YVarID  = 'tempYBoatHealth'; Cy = 0.075;   

		return Pos( axis );
	}
	
	// Boss Health Bar
	public function Boss( axis : name ) : float 
	{ 	    
		GroupID = 'BossandComp';
		XVarID  = 'tempXBoss'; Cx = 0;   
		YVarID  = 'tempYBoss'; Cy = 0.025;    

		return Pos( axis );
	}
	
	// Companion Portrait
	public function Comp( axis : name ) : float 
	{ 	    
		GroupID = 'BossandComp';
		XVarID  = 'tempXComp'; Cx = -0.075;   
		YVarID  = 'tempYComp'; Cy = 0.03;    

		return Pos( axis );
	}
	
	// Enemy Health Bar
	public function Enemy( axis : name ) : float 
	{ 
		GroupID = 'Enemy';
		XVarID  = 'tempXEnemy'; Cx = 0;   
		YVarID  = 'tempYEnemy'; Cy = 0.045;    

		return Pos( axis );
	}
}