/***********************************************************************/
/** 	© 2015 CD PROJEKT S.A. All rights reserved.
/** 	THE WITCHER® is a trademark of CD PROJEKT S. A.
/** 	The Witcher game is based on the prose of Andrzej Sapkowski.
/***********************************************************************/
class W3Effect_ToxicityVenom extends CBaseGameplayEffect
{
	default effectType = EET_ToxicityVenom;
	default isNegative = true;
	default dontAddAbilityOnTarget = false;
	
	event OnUpdate( dt : float )
	{
		var toxToAdd : float;
		
		super.OnUpdate( dt );
		
		toxToAdd = effectValue.valueAdditive + effectValue.valueMultiplicative * 100;
		toxToAdd *= dt;
		target.GainStat( BCS_Toxicity, toxToAdd );
	}
}