/***********************************************************************/
/** 	© 2015 CD PROJEKT S.A. All rights reserved.
/** 	THE WITCHER® is a trademark of CD PROJEKT S. A.
/** 	The Witcher game is based on the prose of Andrzej Sapkowski.
/***********************************************************************/




class W3Effect_WellHydrated extends W3RegenEffect
{
	private var level : int;

	default effectType = EET_WellHydrated;
	default isPositive = true;
	default isNeutral = false;
	default isNegative = false;
	
	event OnEffectAdded(optional customParams : W3BuffCustomParams)
	{
		super.OnEffectAdded(customParams);
		
		// W3EE - Begin
		if( isOnPlayer && target.HasBuff(EET_WellFed) && ((W3PlayerWitcher)target).CanUseSkill(S_Perk_04) )
			target.AddAbility('perk_4', false);
		/*
		if(isOnPlayer && thePlayer == GetWitcherPlayer() && GetWitcherPlayer().HasRunewordActive('Runeword 6 _Stats'))
		{		
			iconPath = theGame.effectMgr.GetPathForEffectIconTypeName('icon_effect_Dumplings');
		}
		*/
		// W3EE - End
	}
	
	event OnEffectRemoved()
	{
		if( isOnPlayer )
			target.RemoveAbilityAll('perk_4');
			
		super.OnEffectRemoved();
	}
	
	event OnPerk15Unequipped()
	{
		SetTimeLeft( initialDuration );
		duration = initialDuration;
	}
	
	protected function CalculateDuration(optional setInitialDuration : bool)
	{
		var val : SAbilityAttributeValue;
		
		super.CalculateDuration(setInitialDuration);
		
		// W3EE - Begin
		/*
		if(isOnPlayer && thePlayer == GetWitcherPlayer() && GetWitcherPlayer().HasRunewordActive('Runeword 6 _Stats'))
		{
			val = target.GetAttributeValue('runeword6_duration_bonus');
			duration *= 1 + val.valueMultiplicative;
		}
		*/
		// W3EE - End
	}
	
	protected function GetSelfInteraction( e : CBaseGameplayEffect ) : EEffectInteract
	{
		return EI_Override;		
	}
	
	public function CacheSettings()
	{
		var i : int;
		var dm : CDefinitionsManagerAccessor;
		var main : SCustomNode;
		var tmpName, customAbilityName : name;
		var type : EEffectType;		
	
		super.CacheSettings();
		
		dm = theGame.GetDefinitionsManager();
		main = dm.GetCustomDefinition('effects');
		
		for(i=0; i<main.subNodes.Size(); i+=1)
		{
			dm.GetCustomNodeAttributeValueName(main.subNodes[i], 'name_name', tmpName);
			EffectNameToType(tmpName, type, customAbilityName);
			if(effectType == type)
			{
				if(!dm.GetCustomNodeAttributeValueInt(main.subNodes[i], 'level', level))
					level = 0;
					
				break;
			}
		}
	}
}