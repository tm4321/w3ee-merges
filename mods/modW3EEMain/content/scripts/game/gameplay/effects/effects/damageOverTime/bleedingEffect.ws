/***********************************************************************/
/** 	© 2015 CD PROJEKT S.A. All rights reserved.
/** 	THE WITCHER® is a trademark of CD PROJEKT S. A.
/** 	The Witcher game is based on the prose of Andrzej Sapkowski.
/***********************************************************************/



class W3Effect_Bleeding extends W3DamageOverTimeEffect
{	
	// W3EE - Begin
	default effectType = EET_Bleeding;
	default resistStat = CDS_BleedingRes;
	
	private saved var curStacks : int;
	private var stackTimer : float;
	private var waitTime : float;
	
	private const var MAX_STACKS : int;
	private const var UPDATE_TIMER : float;
	
	default MAX_STACKS = 15;
	default UPDATE_TIMER = 1.f;
	
	
	event OnEffectAdded( optional customParams : W3BuffCustomParams )
	{
		super.OnEffectAdded(customParams);
		curStacks = (int)MaxF(1, effectValue.valueMultiplicative);
		CalculateDuration(true);
		ResetStackTimer();
		if( (CR4Player)target )
			theGame.GetTutorialSystem().uiHandler.GotoState('Bleeding');
	}
	
	event OnEffectRemoved()
	{
		super.OnEffectRemoved();
		target.RemoveAbilityAll('BleedingStatDebuff');
		if( target.IsEffectActive(targetEffectName) )
			StopTargetFX();
	}
	
	event OnUpdate( dt : float )
	{	
		var dmg, maxVit, maxEss : float;
		var i : int;
		
		waitTime += dt;
		stackTimer -= dt * curStacks;
		
		if( stackTimer <= 0 )
			RemoveStack();
		
		if( waitTime < UPDATE_TIMER )
			return true;
			
		if( !target.IsAlive() )
			return true;
			
		if( target.IsQuestActor() )
			return false;
			
		waitTime = 0.f;
		for(i=0; i<damages.Size(); i+=1)
		{
			dmg = 6.f * curStacks;
			if( curStacks >= 10 )
				dmg *= 1.25f;
				
			if( (W3PlayerWitcher)target && ((W3PlayerWitcher)target).IsMeditating() )
				dmg *= 0.5f;
				
			if( target.IsHuge() )
				dmg *= 0.7f;
				
			if( dmg > 0 )
				effectManager.CacheDamage(damages[i].damageTypeName, dmg, GetCreator(), this, 1.f, true, powerStatType, isEnvironment);		
		}
	}
	
	public function ResetStackTimer()
	{
		if( target.HasBuff(EET_WhiteRaffardDecoction) )
			stackTimer = 20.f;
		else
		if( target.HasBuff(EET_Swallow) )
			stackTimer = 45.f;
		else
			stackTimer = 60.f;
	}
	
	private function RemoveStack()
	{
		curStacks -= 1;
		target.RemoveAbility('BleedingStatDebuff');
		if( curStacks <= 0 )
			target.RemoveEffect(this);
			
		ResetStackTimer();
	}
	
	protected function CalculateDuration( optional setInitialDuration : bool )
	{
		if( setInitialDuration )
			initialDuration = -1;
		duration = -1;
	}
	
	public function OnDamageDealt( dealtDamage : bool )
	{
		if( target.IsQuestActor() )
			return;
			
		if( dealtDamage && curStacks > 1 )
		{
			shouldPlayTargetEffect = true;
			if( !target.IsEffectActive(targetEffectName) )
				PlayTargetFX();
		}
		else
		{
			shouldPlayTargetEffect = false;
			if( target.IsEffectActive(targetEffectName) )
				StopTargetFX();
		}
	}
	
	public function IncreaseStacks( optional val : int )
	{
		if( target.IsQuestActor() )
			return;
			
		ResetStackTimer();
		
		val = Max(1, val);
		if( curStacks + val > MAX_STACKS )
			val = MAX_STACKS - curStacks;
			
		curStacks += val;
		target.AddAbilityMultiple('BleedingStatDebuff', val);
	}
	
	public function GetStacks() : int
	{
		return curStacks;
	}
	
	public function GetMaxStacks() : int
	{
		return MAX_STACKS;
	}
	// W3EE - End
}