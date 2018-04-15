// Global Scale
function GlobalScale() : float 
{ 
	return GetFloat('Global', 'scale');
}

// Global Opacity
function GlobalOpacity() : float 
{ 	
	return GetFloat('Global', 'opacity');
}
	
// Wolf Medallion
function WolfHeadScale() : float 
{ 	
	return ifModOff(1.0, 'WolfMedallion', 'scaleWolfHead');
}		

// Minimap
function MinimapScale() : float 
{ 	
	return ifModOff(1.0, 'MinimapandQuests', 'scaleMinimap2');
}

// Active Quests
function QuestsScale() : float 
{ 
	return ifModOff(1.0, 'MinimapandQuests', 'scaleQuests');
}
	
// Buffs
function BuffsScale() : float 
{ 
	return ifModOff(1.0, 'Buffs', 'scaleBuffs');
}	

// Item Info
function ItemInfoScale() : float 
{ 
	return ifModOff(1.0, 'ItemInfo', 'scaleItemInfo');    
}	

// Damaged Items
function DamagedScale() : float 
{ 
	return ifModOff(1.0, 'ItemInfo', 'scaleDamagedItems');  
}

// Controls Feedback
function ControlsScale() : float 
{ 
	return ifModOff(0.75, 'ControlsandConsole', 'scaleControlsFeedback');  
}

// Action Log/Console
function ConsoleScale() : float 
{ 
	return ifModOff(1.0, 'ControlsandConsole', 'scaleConsole'); 
}	

// Horse Stamina Bar
function HStaminaScale() : float 
{ 
	return ifModOff(1.0, 'Horse', 'scaleHorseStaminaBar'); 
}

// Horse Fear Bar
function HFearScale() : float 
{ 
	return ifModOff(1.0, 'Horse', 'scaleHorsePanicBar');
}

// Oxygen Bar
function OxygenScale() : float 
{ 
	return ifModOff(1.0, 'OxygenandBoat', 'scaleOxygenBar');
}

// Boat Health Bar
function BoatScale() : float 
{ 
	return ifModOff(1.0, 'OxygenandBoat', 'scaleBoatHealth');
}

// Boss Health Bar
function BossScale() : float 
{ 
	return ifModOff(1.0, 'BossandComp', 'scaleBoss');
}

// Companion Portrait
function CompScale() : float 
{ 
	return ifModOff(1.0, 'BossandComp', 'scaleComp');
}