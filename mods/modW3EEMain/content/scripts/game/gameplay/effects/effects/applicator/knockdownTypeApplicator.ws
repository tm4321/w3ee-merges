/***********************************************************************/
/** 	© 2015 CD PROJEKT S.A. All rights reserved.
/** 	THE WITCHER® is a trademark of CD PROJEKT S. A.
/** 	The Witcher game is based on the prose of Andrzej Sapkowski.
/***********************************************************************/




class W3Effect_KnockdownTypeApplicator extends W3ApplicatorEffect
{
	private saved var customEffectValue : SAbilityAttributeValue;		
	private saved var customDuration : float;							
	private saved var customAbilityName : name;							

	default effectType = EET_KnockdownTypeApplicator;
	default isNegative = true;
	default isPositive = false;
	
	
	event OnEffectAdded(optional customParams : W3BuffCustomParams)
	{
		var aardPower	: float;
		var tags : array<name>;
		var i : int;
		var appliedType : EEffectType;
		var null : SAbilityAttributeValue;
		var npc : CNewNPC;
		var params : SCustomEffectParams;
		var min, max : SAbilityAttributeValue;
		// W3EE - Begin
		var sp : SAbilityAttributeValue;
		var effectArray : array<EEffectType>;
		var witcher : W3PlayerWitcher;
		var glyphwordAction : W3DamageAction;
		var aardReaction : W3DamageAction;
		// W3EE - End
		
		if(isOnPlayer)
		{
			thePlayer.OnRangedForceHolster( true, true, false );
		}
		
		
		// W3EE - Begin
		witcher = GetWitcherPlayer();
		if( effectValue.valueMultiplicative + effectValue.valueAdditive > 0 )
			sp = effectValue;
		else
		{
			if( isSignEffect && GetCreator() == witcher )
				sp = witcher.GetSignEntity(ST_Aard).GetTotalSignIntensity();
			else
				sp = creatorPowerStat;
		}
		
		if( witcher.GetSignEntity(ST_Aard).IsAlternateCast() )
		{
			aardPower = MaxF(0.5f, 0.5f + sp.valueMultiplicative - 1);
		}
		else
			aardPower = MaxF(0.f, sp.valueMultiplicative - 1);
		
		if( isSignEffect && GetCreator() == witcher && witcher.GetPotionBuffLevel(EET_PetriPhiltre) == 3 )
		{
			aardPower += 0.5f;
		}
		
		npc = (CNewNPC)target;
		aardPower *= (1 - npc.GetNPCCustomStat(theGame.params.DAMAGE_NAME_STUN));
		if( target.HasTag('WeakToAard') || target.HasAbility('WeakToAard') )
		{
			appliedType = EET_Knockdown;
		}
		else
		if( npc && npc.HasShieldedAbility() )
		{
			if( aardPower >= 0.75f )
				effectArray.PushBack(EET_Knockdown);
			if( aardPower >= 0.45f )
				effectArray.PushBack(EET_LongStagger);
			if( aardPower >= 0.25f )
				effectArray.PushBack(EET_Stagger);
			
			for(i=0; i<effectArray.Size(); i+=1)
			{
				if( RandF() < aardPower )
				{
					appliedType = effectArray[i];
					break;
				}
				
				if( i == effectArray.Size() - 1 )
					appliedType = effectArray[i];
			}
		}
		else
		if( target.IsHuge() )
		{
			if( aardPower >= 0.65f )
				effectArray.PushBack(EET_LongStagger);
			if( aardPower >= 0.35f )
				effectArray.PushBack(EET_Stagger);
			
			for(i=0; i<effectArray.Size(); i+=1)
			{
				if( RandF() < aardPower )
				{
					appliedType = effectArray[i];
					break;
				}
				
				if( i == effectArray.Size() - 1 )
					appliedType = effectArray[i];
			}
		}
		else
		{
			if( aardPower >= 0.75f )
				effectArray.PushBack(EET_HeavyKnockdown);
			if( aardPower >= 0.65f )
				effectArray.PushBack(EET_Knockdown);
			if( aardPower >= 0.45f )
				effectArray.PushBack(EET_LongStagger);
			if( aardPower >= 0.25f )
				effectArray.PushBack(EET_Stagger);
				
			for(i=0; i<effectArray.Size(); i+=1)
			{
				if( RandF() < aardPower )
				{
					appliedType = effectArray[i];
					break;
				}
				
				if( i == effectArray.Size() - 1 )
					appliedType = effectArray[i];
			}
		}
		// W3EE - End
		if( npc.IsFlying() || npc.GetUsedVehicle() )
			appliedType = EET_Knockdown;
			
		appliedType = ModifyHitSeverityBuff(target, appliedType);
		if( (appliedType == EET_HeavyKnockdown || appliedType == EET_Knockdown) && (isSignEffect && GetCreator() == witcher && witcher.HasAbility('Glyphword 10 _Stats', true)) ) 
		{
			if( (target.CountEffectsOfType(EET_SlowdownFrost) > 1 || target.CountEffectsOfType(EET_Frozen) > 0) && !npc.IsImmuneToInstantKill() )
			{
				npc.AddEffectDefault( EET_Frozen, witcher, "Glyphword 10", true );
				glyphwordAction = new W3DamageAction in theGame.damageMgr;
				glyphwordAction.Initialize( witcher, npc, this, "Glyphword 10", EHRT_None, CPS_Undefined, false, false, true, false );
				glyphwordAction.SetInstantKill();
				glyphwordAction.SetForceExplosionDismemberment();
				glyphwordAction.SetIgnoreInstantKillCooldown();
				theGame.damageMgr.ProcessAction( glyphwordAction );
				delete glyphwordAction;
			}
		}
		
		if( appliedType == EET_Undefined && !target.IsImmuneToBuff(EET_Stagger) )
		{
			aardReaction = new W3DamageAction in theGame.damageMgr;
			aardReaction.Initialize(GetCreator(), target, GetCreator(), "AardStun", EHRT_Reflect, CPS_Undefined, false, false, true, false);
			aardReaction.SetHitAnimationPlayType(EAHA_ForceYes);
			aardReaction.SetCanPlayHitParticle(false);
			aardReaction.SetCannotReturnDamage(true);
			aardReaction.SetSuppressHitSounds(true);
			
			theGame.damageMgr.ProcessAction(aardReaction);
			delete aardReaction;
		}
		else
		{
			params.effectType = appliedType;
			params.creator = GetCreator();
			params.sourceName = sourceName;
			params.isSignEffect = isSignEffect;
			params.customPowerStatValue = creatorPowerStat;
			params.customAbilityName = customAbilityName;
			params.duration = customDuration;
			params.effectValue = customEffectValue;	
			
			target.AddEffectCustom(params);
		}
		
		isActive = true;
		duration = 0;
	}
	
	public function Init(params : SEffectInitInfo)
	{
		customDuration = params.duration;
		customEffectValue = params.customEffectValue;
		customAbilityName = params.customAbilityName;
		
		super.Init(params);
	}
}