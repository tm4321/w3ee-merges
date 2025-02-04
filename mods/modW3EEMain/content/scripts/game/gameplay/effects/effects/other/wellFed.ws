/***********************************************************************/
/** 	© 2015 CD PROJEKT S.A. All rights reserved.
/** 	THE WITCHER® is a trademark of CD PROJEKT S. A.
/** 	The Witcher game is based on the prose of Andrzej Sapkowski.
/***********************************************************************/




class W3Effect_WellFed extends W3RegenEffect
{
	default effectType = EET_WellFed;
	default isPositive = true;
	default isNeutral = false;
	default isNegative = false;
	
	
	event OnEffectAdded(optional customParams : W3BuffCustomParams)
	{
		super.OnEffectAdded(customParams);
		
		// W3EE - Begin
		if( isOnPlayer && target.HasBuff(EET_WellHydrated) && ((W3PlayerWitcher)target).CanUseSkill(S_Perk_04) )
			target.AddAbility('wellfedhydrated', false);
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
			target.RemoveAbilityAll('wellfedhydrated');
			
		super.OnEffectRemoved();
	}

	event OnPerk15Unequipped()
	{
		SetTimeLeft( initialDuration );
		duration = initialDuration;
	}
	
	protected function CalculateDuration(optional setInitialDuration : bool)
	{
		var min, max : SAbilityAttributeValue;
		
		theGame.GetDefinitionsManager().GetAbilityAttributeValue(abilityName, 'duration', min, max);
		duration = CalculateAttributeValue(GetAttributeRandomizedValue(min, max));
		if( isOnPlayer && ((W3PlayerWitcher)target).CanUseSkill(S_Perk_15) )
			duration *= 1.5f;
			
		if( setInitialDuration )
			initialDuration = duration;
			
		if( duration == -1 )
			return;
	}
	
	protected function GetSelfInteraction( e : CBaseGameplayEffect ) : EEffectInteract
	{
		var eff : W3Effect_WellFed;
		var dm : CDefinitionsManagerAccessor;
		var thisLevel, otherLevel : int;
		var min, max : SAbilityAttributeValue;
		
		dm = theGame.GetDefinitionsManager();
		eff = (W3Effect_WellFed)e;
		dm.GetAbilityAttributeValue(abilityName, 'level', min, max);
		thisLevel = RoundMath(CalculateAttributeValue(GetAttributeRandomizedValue(min, max)));
		dm.GetAbilityAttributeValue(eff.abilityName, 'level', min, max);
		otherLevel = RoundMath(CalculateAttributeValue(GetAttributeRandomizedValue(min, max)));
		
		return EI_Override;		
	}
}

exec function fixfood()
{
	thePlayer.RemoveAbilityAll('WellFedEffect_Level1');
	thePlayer.RemoveAbilityAll('WellFedEffect_Level2');
	thePlayer.RemoveAbilityAll('WellFedEffect_Level3');
	thePlayer.RemoveAbilityAll('WellHydratedEffect_Level1');
	thePlayer.RemoveAbilityAll('WellHydratedEffect_Level2');
	thePlayer.RemoveAbilityAll('WellHydratedEffect_Level3');
}