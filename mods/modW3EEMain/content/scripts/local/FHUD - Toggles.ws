//---=== modFriendlyHUD ===---
function IsHUDGroupEnabledForReason( modNames : array< string >, reason : string ) : bool
{
	var hud : CR4ScriptedHud;
	var module : CR4HudModuleBase;
	var i : int;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		for( i = 0; i < modNames.Size(); i += 1 )
		{
			module = (CR4HudModuleBase)hud.GetHudModule( modNames[i] );
			if ( module )
			{
				return module.IsEnabledForReason( reason );
			}
		}
	}
	return false;
}

function IsHUDModuleEnabledForReason( modName : string, reason : string ) : bool
{
	var hud : CR4ScriptedHud;
	var module : CR4HudModuleBase;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		module = (CR4HudModuleBase)hud.GetHudModule( modName );
		if ( module )
		{
			return module.IsEnabledForReason( reason );
		}
	}
	return false;
}

function ToggleHUDModule( modName : string, toggle : bool, reason : string )
{
	var hud : CR4ScriptedHud;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		hud.SetEnabledTemporarily( modName, toggle, true, reason );
	}
}

function ToggleBuffsModule( toggle : bool, reason : string )
{
	var hud : CR4ScriptedHud;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		hud.SetEnabledTemporarily( "BuffsModule", toggle, true, reason );
	}
}

function ToggleEssentialModules( toggle : bool, reason : string )
{
	var hud : CR4ScriptedHud;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		hud.ToggleModulesTemporarily( GetFHUDConfig().essentialModules, toggle, reason );
	}
}

function ToggleMinimapModules( toggle : bool, reason : string )
{
	var hud : CR4ScriptedHud;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		hud.ToggleModulesTemporarily( GetFHUDConfig().minimapModules, toggle, reason );
	}
}

function ToggleQuestsModules( toggle : bool, reason : string )
{
	var hud : CR4ScriptedHud;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		hud.ToggleModulesTemporarily( GetFHUDConfig().questsModules, toggle, reason );
	}
}

function ToggleCharacterModules( toggle : bool, reason : string )
{
	var hud : CR4ScriptedHud;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		hud.ToggleModulesTemporarily( GetFHUDConfig().characterModules, toggle, reason );
	}
}

function ToggleCombatModules( toggle : bool, reason : string )
{
	var hud : CR4ScriptedHud;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		hud.ToggleModulesTemporarily( GetFHUDConfig().combatModules, toggle, reason );
	}
}

function ToggleWSModules( toggle : bool, reason : string )
{
	var hud : CR4ScriptedHud;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		hud.ToggleModulesTemporarily( GetFHUDConfig().witcherSensesModules, toggle, reason );
	}
}

function ToggleMeditModules( toggle : bool, reason : string )
{
	var hud : CR4ScriptedHud;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		hud.ToggleModulesTemporarily( GetFHUDConfig().meditationModules, toggle, reason );
	}
}

function ToggleModulesToShowInRadialMenu( toggle : bool, reason : string )
{
	var hud : CR4ScriptedHud;
	
	hud = (CR4ScriptedHud)theGame.GetHud(); 
	if ( hud ) 
	{
		hud.ToggleModulesTemporarily( GetFHUDConfig().radialMenuModules, toggle, reason );
	}
}
//---=== modFriendlyHUD ===---
