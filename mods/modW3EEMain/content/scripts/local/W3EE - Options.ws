/****************************************************************************/
/** Copyright © CD Projekt RED 2015
/** Author : Reaperrz
/****************************************************************************/

// class which handles the reading of all the in-game options
class W3EEOptionHandler
{	
	public var AdrGenSpeedMult, AdrGenDelay, AdrPerc : float;
	public var lockOn, lockOnMode : bool;
	private var padDistanceLong			: float;
	private var padDistanceMedium		: float;
	
	private var requiredTimber			: int;
	private var requiredTimberHard		: int;
	private var levelAnywhere			: bool;
	private var talentsAnywhere			: bool;
	private var upgradeAnywhere			: bool;
	private var meditateCameraLock		: bool;
	private var meditateTimeScale		: int;
	
	private var alchemyYield_Potions	: int;
	private var alchemyYield_Oils		: int;
	private var alchemyYield_Bombs		: int;
	private var potionDur				: int;
	private var distillDur				: int;
	private var maxPotionCount			: int;
	private var maxBombCount			: int;
	private var maxOilCount				: int;
	private var globalPotDur			: float;
	private var globalDecDur			: float;
	private var globalOilDur			: float;
	private var minimumPotDur			: float;
	private var minimumDecDur			: float;
	private var minimumOilDur			: float;
	private var potDurMult				: float;
	private var decDurMult				: float;
	private var oilDurMult				: float;
	private var fadeOutAlch				: bool;
	private var alchAnywhere			: bool;
	
	private var animDrink				: bool;
	private var animEat					: bool;
	private var animOil					: bool;
	private var animLoot				: bool;
	private var animCombat				: bool;
	
	private var toxStandardDegen		: float;
	private var toxFastDegen			: float;
	private var toxFastDegenThreshold	: float;
	private var toxSlowCombatDegen		: bool;
	private var toxCombatDegen			: float;
	private var toxResidualDegen		: float;
	private var potionDrunkDurationLow	: float;
	private var potionDrunkDurationHigh	: float;
	
	public function ReadOptionValues()
	{
		var wrapper : CInGameConfigWrapper;
		
		wrapper = theGame.GetInGameConfigWrapper();
		AdrGenSpeedMult = FocusGainSpeedMult();
		AdrGenDelay = FocusGainDelay();
		AdrPerc = MaxFocus() / 1000;
		lockOn = wrapper.GetVarValue('SCOptionCM', 'Lockon');
		lockOnMode = wrapper.GetVarValue('SCOptionCM', 'LockonM');
		padDistanceLong = StringToFloat(wrapper.GetVarValue('SCOptionCM', 'PadDistLong'));
		padDistanceMedium = StringToFloat(wrapper.GetVarValue('SCOptionCM', 'PadDistMed'));
		
		requiredTimber = StringToInt(wrapper.GetVarValue('SCOptionPrepMed', 'PrepTimb'));
		requiredTimberHard = StringToInt(wrapper.GetVarValue('SCOptionPrepMed', 'PrepHTimb'));
		levelAnywhere = wrapper.GetVarValue('SCOptionPrepMed', 'PrepLVL');
		talentsAnywhere = wrapper.GetVarValue('SCOptionPrepMed', 'PrepTalents');
		upgradeAnywhere = wrapper.GetVarValue('SCOptionPrepMed', 'PrepUpgrade');
		meditateCameraLock = wrapper.GetVarValue('SCOptionPrepMed', 'PrepCamLock');
		meditateTimeScale = StringToInt(wrapper.GetVarValue('SCOptionPrepMed', 'PrepTimeScale'));
		
		alchemyYield_Potions = StringToInt(wrapper.GetVarValue('SCOptionPrepAlch', 'potion_cooked_quantity'));
		alchemyYield_Oils = StringToInt(wrapper.GetVarValue('SCOptionPrepAlch', 'oil_cooked_quantity'));
		alchemyYield_Bombs = StringToInt(wrapper.GetVarValue('SCOptionPrepAlch', 'bomb_cooked_quantity'));
		potionDur = StringToInt(wrapper.GetVarValue('SCOptionPrepAlch', 'alchemy_time_cost'));
		distillDur = StringToInt(wrapper.GetVarValue('SCOptionPrepAlch', 'distillation_time'));
		maxPotionCount = StringToInt(wrapper.GetVarValue('SCOptionPrepAlch', 'max_potion_count'));
		maxBombCount = StringToInt(wrapper.GetVarValue('SCOptionPrepAlch', 'max_bomb_count'));
		maxOilCount = StringToInt(wrapper.GetVarValue('SCOptionPrepAlch', 'max_oil_count'));
		globalPotDur = StringToFloat(wrapper.GetVarValue('SCOptionPrepAlch', 'global_potion_duration'));
		globalDecDur = StringToFloat(wrapper.GetVarValue('SCOptionPrepAlch', 'mutagen_potion_duration'));
		globalOilDur = StringToFloat(wrapper.GetVarValue('SCOptionPrepAlch', 'oil_duration'));
		minimumPotDur = StringToFloat(wrapper.GetVarValue('SCOptionPrepAlch', 'global_mininum_potion_duration'));
		minimumDecDur = StringToFloat(wrapper.GetVarValue('SCOptionPrepAlch', 'mutagen_mininum_potion_duration'));
		minimumOilDur = StringToFloat(wrapper.GetVarValue('SCOptionPrepAlch', 'oil_minimum_duration'));
		potDurMult = StringToFloat(wrapper.GetVarValue('SCOptionPrepAlch', 'potion_duration_multiplier'));
		decDurMult = StringToFloat(wrapper.GetVarValue('SCOptionPrepAlch', 'mutagen_duration_multiplier'));
		oilDurMult = StringToFloat(wrapper.GetVarValue('SCOptionPrepAlch', 'oil_duration_multiplier'));
		fadeOutAlch = wrapper.GetVarValue('SCOptionPrepAlch', 'fade_out_alchemy');
		alchAnywhere = wrapper.GetVarValue('SCOptionPrepAlch', 'alchemy_anywhere');
		
		animDrink = wrapper.GetVarValue('SCOptionAnims', 'AnimDrink');
		animEat = wrapper.GetVarValue('SCOptionAnims', 'AnimEat');
		animOil = wrapper.GetVarValue('SCOptionAnims', 'AnimOil');
		animLoot = wrapper.GetVarValue('SCOptionAnims', 'AnimLoot');
		animCombat = wrapper.GetVarValue('SCOptionAnims', 'AnimCombat');
		
		toxStandardDegen = StringToFloat(wrapper.GetVarValue('SCOptionTox', 'standard_degeneration_rate'));
		toxFastDegen = StringToFloat(wrapper.GetVarValue('SCOptionTox', 'accelerated_degeneration_rate'));
		toxFastDegenThreshold = StringToFloat(wrapper.GetVarValue('SCOptionTox', 'accelerated_degeneration_threshold'));
		toxSlowCombatDegen = wrapper.GetVarValue('SCOptionTox', 'deccelerated_combat_degeneration');
		toxCombatDegen = StringToFloat(wrapper.GetVarValue('SCOptionTox', 'combat_degeneration_rate'));
		toxResidualDegen = StringToFloat(wrapper.GetVarValue('SCOptionTox', 'residual_degeneration_rate'));
		potionDrunkDurationLow = StringToFloat(wrapper.GetVarValue('SCOptionTox', 'potion_drunk_dur_low'));
		potionDrunkDurationHigh = StringToFloat(wrapper.GetVarValue('SCOptionTox', 'potion_drunk_dur_high'));
	}
	
	public function GetPadDistanceLong() : float
	{
		return padDistanceLong;
	}
	
	public function GetPadDistanceMedium() : float
	{
		return padDistanceMedium;
	}
	
	// ---- Meditation Start ---- //
		
		public function GetRequiredTimber() : int
		{
			return requiredTimber;
		}
		
		public function GetRequiredHardTimber() : int
		{
			return requiredTimberHard;
		}
		
		public function GetLevelAnywhere() : bool
		{
			return levelAnywhere;
		}
		
		public function GetTalentsEverywhere() : bool
		{
			return talentsAnywhere;
		}
		
		public function GetUpgradeAnywhere() : bool
		{
			return upgradeAnywhere;
		}
		
		public function GetIsCameraLocked() : bool
		{
			return meditateCameraLock;
		}
		
		public function GetMeditateTimeScale() : int
		{
			return meditateTimeScale;
		}
		
	// ---- Meditation End ---- //
	
	// ---- Alchemy Start ---- //
		
		public function GetAlchemyYieldPotions() : int
		{
			return alchemyYield_Potions;
		}
		
		public function GetAlchemyYieldOils() : int
		{
			return alchemyYield_Oils;
		}
		
		public function GetAlchemyYieldBombs() : int
		{
			return alchemyYield_Bombs;
		}
		
		public function GetShouldAlchemyFade() : bool
		{
			return fadeOutAlch;
		}
		
		public function GetPerformAlchemyAnywhere() : bool
		{
			return alchAnywhere;
		}
		
		public function GetAlchemyLength() : int
		{
			return potionDur;
		}
		
		public function GetDistillLength() : int
		{
			return distillDur;
		}
		
		public function GetMaxPotionCount() : int
		{
			return maxPotionCount;
		}
		
		public function GetMaxBombCount() : int
		{
			return maxBombCount;
		}
		
		public function GetMaxOilCount() : int
		{
			return maxOilCount;
		}
		
		public function GetGlobalPotionDuration() : float
		{
			return globalPotDur;
		}
		
		public function GetGlobalDecoctionDuration() : float
		{
			return globalDecDur;
		}
		
		public function GetGlobalOilDuration() : float
		{
			return globalOilDur;
		}
		
		public function GetMinimumPotionDuration() : float
		{
			return minimumPotDur;
		}
		
		public function GetMinimumDecoctionDuration() : float
		{
			return minimumDecDur;
		}
		
		public function GetMinimumOilDuration() : float
		{
			return minimumOilDur;
		}
		
		public function GetPotionDurationMult() : float
		{
			return potDurMult;
		}
		
		public function GetDecoctionDurationMult() : float
		{
			return decDurMult;
		}
		
		public function GetOilDurationMult() : float
		{
			return oilDurMult;
		}
		
	// ---- Alchemy End ---- //
	
	// ---- Animations Start ---- //
		
		public function GetUseDrinkAnimation() : bool
		{
			return animDrink;
		}
		
		public function GetUseEatAnimation() : bool
		{
			return animEat;
		}
		
		public function GetUseOilAnimation() : bool
		{
			return animOil;
		}
		
		public function GetUseLootAnimation() : bool
		{
			return animLoot;
		}
		
		public function GetUseCombatAnimations() : bool
		{
			return animCombat;
		}
		
	// ---- Animation End ---- //
	
	// ---- Toxicity Start ---- //
		
		public function GetStandardToxicityDegen() : float
		{
			return toxStandardDegen;
		}
		
		public function GetFastToxicityDegen() : float
		{
			return toxFastDegen;
		}
		
		public function GetFastToxicityDegenThreshold() : float
		{
			return toxFastDegenThreshold;
		}
		
		public function GetSlowToxicityCombatDegen() : bool
		{
			return toxSlowCombatDegen;
		}
		
		public function GetToxicityCombatDegen() : float
		{
			return toxCombatDegen;
		}
		
		public function GetToxicityResidualDegen() : float
		{
			return toxResidualDegen;
		}
		
		public function GetPotionDrunkDurationLow() : float
		{
			return potionDrunkDurationLow;
		}
		
		public function GetPotionDrunkDurationHigh() : float
		{
			return potionDrunkDurationHigh;
		}
		
	// ---- Toxicity End ---- //

	// ---- Injuries ---- //
	
	public function InjuryChance() : int
	{
		return StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionIN', 'InjChan'));
	}
	
	public function InjuryPlayerImmunity() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionIN', 'InjPImm');
	}
	
	public function InjuryMessages() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionIN', 'InjMess');
	}
	
	// ---- FUCK THIS GENERAL SHIT ---- //
	
	public function BaseCWGeralt() : int
	{
		return StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionInv', 'CWGeralt'));
	}
	
	public function BaseCWRoach() : int
	{
		return StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionInv', 'CWHorse'));
	}
	
	public function InvEverywhere() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionInv', 'HorseInv');
	}
	
	public function WeightAlch() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionInv', 'WAlch');
	}
	
	public function WeightMoney() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionInv', 'WMoney');
	}
	
	public function WeightQuest() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionInv', 'WQuest');
	}
	
	public function WeightMisc() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionInv', 'WMisc');
	}
	
	public function CombatInv() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionInv', 'CInvent');
	}
	
	// ---- General Begin ---- //
	
	public function SkillPointsGained() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SPG'));
	}	
	
	// ---- General End ---- //

	// ---- Exploration Begin ---- //
	
	public function FallingDamage() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionEx', 'FallingDamage');
	}
	
	public function SprintStamUsage() : int
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionEx', 'SStamUsage') );
	}
	
	public function SprintStamDelExpl() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionEx', 'SStamDelExpl') );
	}	

	public function SprintStamDelComb() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionEx', 'SStamDelComb') );
	}	
	
	public function SprintInstDrain() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionEx', 'SStamInstDr');
	}
	
	public function SprintIndoors() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionEx', 'SStamIndoor');
	}
	
	// ---- Exploration End ---- //

	// ---- Health Begin ---- //
	
	public function SetHealthPlayer() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'PlayerHP') );
	}
	
	public function SetHealthRelict() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'RelictHP') );
	}
	
	public function SetHealthNecro() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'NecroHP') );
	}
	
	public function SetHealthCursed() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'CursedHP') );
	}
	
	public function SetHealthBeast() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'BeastHP') );
	}
	
	public function SetHealthInsectoid() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'InsectoidHP') );
	}
	
	public function SetHealthVampire() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'VampireHP') );
	}
	
	public function SetHealthSpecter() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'SpecterHP') );
	}
	
	public function SetHealthDraconid() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'DraconidHP') );
	}
	
	public function SetHealthGriffin() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'GriffinHP') );
	}
	
	public function SetHealthHybrid() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'HybridHP') );
	}
	
	public function SetHealthTroll() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'TrollHP') );
	}

	public function SetHealthNekker() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'NekkerHP') );
	}
	
	public function SetHealthHuman() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'HumanHP') );
	}
	
	public function SetHealthElemental() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'ElementalHP') );
	}
	
	public function SetHealthWildHunt() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'WildHuntHP') );
	}
	
	public function SetHealthAnimal() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionH', 'AnimalsHP') );
	}
	
	// ---- Health End ---- //
	
	// ---- Damage Begin ---- //
	
	public function PlayerDamage() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'PDam') );
	}
	
	public function PlayerDamageCross() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'PDamC') );
	}
	
	public function PlayerDamageSign() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'PDamS') );
	}
	
	public function PlayerDamageBomb() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'PDamB') );
	}

	public function PlayerDOTDamage() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'PDOT') );
	}

	public function EnemyDOTDamage() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'EDOT') );
	}
	
	public function GetPlayerAPMult() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'PAPMult') );
	}
	
	public function GetEnemyAPMult() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'EAPMult') );
	}
	
	public function GetEnemyLightAPMult() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'ELightAPMult') );
	}
	
	public function GetEnemyHeavyAPMult() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'EHeavyAPMult') );
	}
	
	public function SetDamageRelict() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'RelictDam') );
	}
	
	public function SetDamageNecro() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'NecroDam') );
	}
	
	public function SetDamageCursed() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'CursedDam') );
	}
	
	public function SetDamageBeast() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'BeastDam') );
	}	
	
	public function SetDamageInsectoid() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'InsectoidDam') );
	}	
	
	public function SetDamageVampire() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'VampireDam') );
	}	
	
	public function SetDamageSpecter() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'SpecterDam') );
	}	
	
	public function SetDamageDraconid() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'DraconidDam') );
	}
	
	public function SetDamageGriffin() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'GriffinDam') );
	}	
	
	public function SetDamageHybrid() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'HybridDam') );
	}	
	
	public function SetDamageTroll() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'TrollDam') );
	}	
		
	public function SetDamageNekker() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'NekkerDam') );
	}	
	
	public function SetDamageHuman() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'HumanDam') );
	}	
	
	public function SetDamageElemental() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'ElementalDam') );
	}	
	
	public function SetDamageWildHunt() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'WildHuntDam') );
	}	
	
	public function SetDamageAnimals() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionD', 'AnimalsDam') );
	}	
	
	// ---- Damage End ---- //
	
	// ---- Combat Start ---- //

	public function LockOn() : bool
	{
		return lockOn;
	}
	
	public function LockOnMode() : bool
	{
		return lockOnMode;
	}

	public function LockOnModeSF() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCM', 'LockonMSF');
	}
	
	public function CombatState() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCM', 'Combatstate');
	}
	
	public function SignInstantCast() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCM', 'SignInstantCast');
	}

	public function SkillDependant() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASSD');
	}

	public function StamCostFast() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'FASC'));
	}

	public function StamCostHeavy() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'SASC'));
	}

	public function StamCostEvade() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'EVSC'));
	}

	public function StamCostBlock() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'BLSC'));
	}

	public function StamCostCounter() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'COSC'));
	}
	
	public function StamCostCounterKick() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'COSCK'));
	}
	
	public function StamCostCounterBash() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'COSCB'));
	}
	
	public function StamRegenDelay() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'RDSC'));
	}
	
	public function StamRegenDelayHeavy() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'RDSCH'));
	}
	
	public function StamRegenDelayDodge() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'RDSCD'));
	}
	
	public function StamRegenDelayBlock() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'RDSCB'));
	}
	
	public function StamRegenDelayCounter() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'RDSCC'));
	}
	
	public function StamRegenDelayCounterKick() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'RDSCCK'));
	}
	
	public function StamRegenDelayCounterBash() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'RDSCCB'));
	}
	
	public function StamRed() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASDPS') );
	}
	
	public function HPRed() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASDPH') );
	}
	
	public function FAI() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASFA') );
	}
	
	public function HAI() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASHA') );
	}
	
	public function DAI() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASDR') );
	}
	
	public function FAIN() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASFAN') );
	}
	
	public function HAIN() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASHAN') );
	}
	
	public function DAIN() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASDRN') );
	}

	public function APIF() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASAPF') );
	}
		
	public function APIH() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'ASAPH') );
	}
	
	public function LightPerc() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'LightIn') );
	}
	
	public function HeavyPerc() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCW', 'HeavyDe') );
	}
	
	public function HeavyParryAllowed() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'PCheck');
	}
	
	public function HeavyParryStagger() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'PCheckS');
	}
	
	public function ParryArrow() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'PCheckA');
	}
	
	public function CounterArrow() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'CCheckA');
	}
	
	public function HeavyCounterAllowed() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'CCheck');
	}

	public function CounterADRGainAllowed() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'CADRG');
	}

	public function CounterADRGainAmount() : float
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'CADRGA') );
	}

	public function BleedDamage() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'BleedDam') );
	}
	
	public function StaminaDamage() : int
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'StamDam') );
	}

	public function StaminaDamageDuration() : float
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'StamDur') );
	}

	public function BleedDuration() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'BleedDur') );
	}
	
	public function DisarmShield() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'DisarmSH');
	}

	public function HCT() : int
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'CTH') );
	}
		
	public function HHCT() : int
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'CTHH') );
	}
		
	public function SHHCT() : int
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'CTHSH') );
	}

	public function MCT() : int
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'CTM') );
	}
		
	public function HMCT() : int
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'CTMH') );
	}
	
	public function RSFinishVulnerability() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCR', 'RSFV');
	}
	
	public function RSAutomaticFinisher() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCR', 'RSAF');
	}

	public function Dism() : int
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCR', 'Dism') );
	}	
	
	public function FinishChance() : int
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCR', 'Finish') );
	}	
	
	public function FADRGain() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCR', 'RSAGF') );
	}	
	
	public function DADRGain() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCR', 'RSAGD') );
	}	
	
	public function MaxFocus() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCA', 'ADRP') );
	}	
	
	public function FocusGainSpeedMult() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCA', 'ADRGenH') );
	}	
	
	public function FocusGainDelay() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCA', 'ADRGenD') );
	}	
	
	public function FocusLossLightHits() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCA', 'ADRDegH') );
	}	
	
	public function FocusLossHeavyHits() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCA', 'ADRDegHH') );
	}	
	
	public function FocusLossSuperHeavyHits() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCA', 'ADRDegHSH') );
	}	
	
	public function VigIntLost() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCA', 'AdrVigInt') );
	}	
	
	public function VigIntStam() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCA', 'AdrVigStam') );
	}	
		
	public function KnockAT() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'KAT') );
	}	
	
	public function KnockST() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'KST') );
	}	
	
	public function KnockHT() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCP', 'KHT') );
	}	
	
	///////////////////////////////////////////////////////////////////////////////////////////////
	
	public function WhirlCostAdr() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCWh', 'WhAU') );
	}	
	
	public function WhirlCostStam() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCWh', 'WhSU') );
	}	
	
	public function WhirlDamage() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCWh', 'WhDM') );
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////////
	
	public function RendCostStam() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionRend', 'ReSU') );
	}	
	
	public function RendCostAdr() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionRend', 'ReAU') );
	}	

	public function RendDamage() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionRend', 'ReDM') );
	}	
	
	public function RendDamageAdr() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionRend', 'ReDPA') );
	}	

	public function RendDamageStam() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionRend', 'ReDPS') );
	}

	// ---- Combat End ---- //

	// ---- Levels Start ---- //
	
	public function Pushover() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionLG', 'GSPE');
	}

	public function HDCM() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionLG', 'GSHDC');
	}	
	
	// ---- Levels End ---- //
	
	// ---- Enemies Start ---- //
	
	public function Aggression() : int
	{
		return StringToInt( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE', 'EnAgg') );
	}
	
	public function EnemyDodgeNegateDamage() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE', 'EDND');
	}
	
	public function EnemyDodgeDamageNegation() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE', 'EDDN') );
	}
	
	// GROUP 1
	public function Group1GetVal1() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits1') );
	}
	
	public function Group1GetVal2() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits2') );
	}
	
	public function Group1GetVal3() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits3') );
	}
	
	public function Group1GetVal4() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits4') );
	}
	
	public function Group1GetVal5() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits5') );
	}
	
	public function Group1GetVal6() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits6') );
	}
	
	public function Group1GetVal7() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits7') );
	}
	
	public function Group1GetVal8() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits8') );
	}
	
	public function Group1GetVal9() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits9') );
	}
	
	public function Group1GetVal10() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits10') );
	}
	
	public function Group1GetVal11() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits11') );
	}
	
	public function Group1GetVal12() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE1', 'BlockHits12') );
	}
	
	// GROUP 2
	public function Group2GetVal1() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits1') );
	}
	
	public function Group2GetVal2() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits2') );
	}
	
	public function Group2GetVal3() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits3') );
	}
	
	public function Group2GetVal4() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits4') );
	}
	
	public function Group2GetVal5() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits5') );
	}
	
	public function Group2GetVal6() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits6') );
	}
	
	public function Group2GetVal7() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits7') );
	}
	
	public function Group2GetVal8() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits8') );
	}
	
	public function Group2GetVal9() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits9') );
	}
	
	public function Group2GetVal10() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits10') );
	}
	
	public function Group2GetVal11() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits11') );
	}
	
	public function Group2GetVal12() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE2', 'BlockHits12') );
	}
	
	// GROUP 3
	public function Group3GetVal1() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits1') );
	}
	
	public function Group3GetVal2() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits2') );
	}
	
	public function Group3GetVal3() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits3') );
	}
	
	public function Group3GetVal4() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits4') );
	}
	
	public function Group3GetVal5() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits5') );
	}
	
	public function Group3GetVal6() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits6') );
	}
	
	public function Group3GetVal7() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits7') );
	}
	
	public function Group3GetVal8() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits8') );
	}
	
	public function Group3GetVal9() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits9') );
	}
	
	public function Group3GetVal10() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits10') );
	}
	
	public function Group3GetVal11() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits11') );
	}
	
	public function Group3GetVal12() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE3', 'BlockHits12') );
	}
	
	// GROUP 4
	public function Group4GetVal1() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits1') );
	}
	
	public function Group4GetVal2() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits2') );
	}
	
	public function Group4GetVal3() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits3') );
	}
	
	public function Group4GetVal4() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits4') );
	}
	
	public function Group4GetVal5() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits5') );
	}
	
	public function Group4GetVal6() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits6') );
	}
	
	public function Group4GetVal7() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits7') );
	}
	
	public function Group4GetVal8() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits8') );
	}
	
	public function Group4GetVal9() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits9') );
	}
	
	public function Group4GetVal10() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits10') );
	}
	
	public function Group4GetVal11() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits11') );
	}
	
	public function Group4GetVal12() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE4', 'BlockHits12') );
	}
	
	// GROUP 5
	public function Group5GetVal1() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits1') );
	}
	
	public function Group5GetVal2() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits2') );
	}
	
	public function Group5GetVal3() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits3') );
	}
	
	public function Group5GetVal4() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits4') );
	}
	
	public function Group5GetVal5() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits5') );
	}
	
	public function Group5GetVal6() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits6') );
	}
	
	public function Group5GetVal7() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits7') );
	}
	
	public function Group5GetVal8() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits8') );
	}
	
	public function Group5GetVal9() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits9') );
	}
	
	public function Group5GetVal10() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits10') );
	}
	
	public function Group5GetVal11() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits11') );
	}
	
	public function Group5GetVal12() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE5', 'BlockHits12') );
	}
	
	// GROUP 6
	public function Group6GetVal1() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits1') );
	}
	
	public function Group6GetVal2() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits2') );
	}
	
	public function Group6GetVal3() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits3') );
	}
	
	public function Group6GetVal4() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits4') );
	}
	
	public function Group6GetVal5() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits5') );
	}
	
	public function Group6GetVal6() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits6') );
	}
	
	public function Group6GetVal7() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits7') );
	}
	
	public function Group6GetVal8() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits8') );
	}
	
	public function Group6GetVal9() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits9') );
	}
	
	public function Group6GetVal10() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits10') );
	}
	
	public function Group6GetVal11() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits11') );
	}
	
	public function Group6GetVal12() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE6', 'BlockHits12') );
	}
	
	// GROUP 7
	public function Group7GetVal1() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits1') );
	}
	
	public function Group7GetVal2() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits2') );
	}
	
	public function Group7GetVal3() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits3') );
	}
	
	public function Group7GetVal4() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits4') );
	}
	
	public function Group7GetVal5() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits5') );
	}
	
	public function Group7GetVal6() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits6') );
	}
	
	public function Group7GetVal7() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits7') );
	}
	
	public function Group7GetVal8() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits8') );
	}
	
	public function Group7GetVal9() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits9') );
	}
	
	public function Group7GetVal10() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits10') );
	}
	
	public function Group7GetVal11() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits11') );
	}
	
	public function Group7GetVal12() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE7', 'BlockHits12') );
	}
	
	// GROUP 8
	public function Group8GetVal1() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits1') );
	}
	
	public function Group8GetVal2() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits2') );
	}
	
	public function Group8GetVal3() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits3') );
	}
	
	public function Group8GetVal4() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits4') );
	}
	
	public function Group8GetVal5() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits5') );
	}
	
	public function Group8GetVal6() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits6') );
	}
	
	public function Group8GetVal7() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits7') );
	}
	
	public function Group8GetVal8() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits8') );
	}
	
	public function Group8GetVal9() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits9') );
	}
	
	public function Group8GetVal10() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits10') );
	}
	
	public function Group8GetVal11() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits11') );
	}
	
	public function Group8GetVal12() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE8', 'BlockHits12') );
	}
	
	// GROUP 9
	public function Group9GetVal1() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits1') );
	}
	
	public function Group9GetVal2() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits2') );
	}
	
	public function Group9GetVal3() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits3') );
	}
	
	public function Group9GetVal4() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits4') );
	}
	
	public function Group9GetVal5() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits5') );
	}
	
	public function Group9GetVal6() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits6') );
	}
	
	public function Group9GetVal7() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits7') );
	}
	
	public function Group9GetVal8() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits8') );
	}
	
	public function Group9GetVal9() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits9') );
	}
	
	public function Group9GetVal10() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits10') );
	}
	
	public function Group9GetVal11() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits11') );
	}
	
	public function Group9GetVal12() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE9', 'BlockHits12') );
	}
	
	// GROUP 10
	public function Group10GetVal1() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits1') );
	}
	
	public function Group10GetVal2() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits2') );
	}
	
	public function Group10GetVal3() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits3') );
	}
	
	public function Group10GetVal4() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits4') );
	}
	
	public function Group10GetVal5() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits5') );
	}
	
	public function Group10GetVal6() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits6') );
	}
	
	public function Group10GetVal7() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits7') );
	}
	
	public function Group10GetVal8() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits8') );
	}
	
	public function Group10GetVal9() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits9') );
	}
	
	public function Group10GetVal10() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits10') );
	}
	
	public function Group10GetVal11() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits11') );
	}
	
	public function Group10GetVal12() : float
	{
		return StringToFloat( theGame.GetInGameConfigWrapper().GetVarValue('SCOptionCE10', 'BlockHits12') );
	}
	
	// ---- Enemies End ---- //

	// ---- Skills Start ---- //

	public function AllSkillsUnlocked() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SlotsUnlocked');
	}	
	
	public function NoSkillPointReq() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'PointReq');
	}	
	
	public function GetSkillRateGeneral() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateGeneral'));
	}	
	public function GetSkillRateFast() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateFast'));		
	}
	public function GetSkillRateStrong() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateStrong'));		
	}
	public function GetSkillRateUtility() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateUtility'));		
	}
	public function GetSkillRateCrossbow() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateCrossbow'));		
	}
	public function GetSkillRateTrance() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateTrance'));		
	}
	public function GetSkillRateAard() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateAard'));		
	}
	public function GetSkillRateIgni() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateIgni'));		
	}
	public function GetSkillRateYrden() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateYrden'));		
	}
	public function GetSkillRateQuen() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateQuen'));		
	}
	public function GetSkillRateAxii() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateAxii'));		
	}
	public function GetSkillRatePotions() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRatePotions'));		
	}
	public function GetSkillRateOils() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateOils'));		
	}
	public function GetSkillRateBombs() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateBombs'));		
	}
	public function GetSkillRateMutagens() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateMutagens'));		
	}
	public function GetSkillRateGrasses() : float
	{
		return StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'SkillRateGrasses'));		
	}
	public function AllMutagensUnlocked() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'MutsUnlocked');
	}	
	
	// ---- Skills End ---- //

	// ---- Visuals Begin ---- //

	public function IsBloodActive() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionVisuals', 'BloodActive');
	}	

	public function IsBloodActiveRanged() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionVisuals', 'BloodActiveRange');
	}	
	
	public function IsBloodOnlyCrit() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionVisuals', 'BloodOnlyCrit');
	}	
	
	public function IsBloodSprayActive() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionVisuals', 'BloodSpray');
	}	
	
	public function IsBloodSprayMajActive() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionVisuals', 'BloodSprayMaj');
	}	
		
	public function IsBloodTrailActive() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionVisuals', 'BloodTrail');
	}	
	
	public function IsAardIntense() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionVisuals', 'SignAardInt');
	}
	
	public function IsIgniIntense() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('SCOptionVisuals', 'SignIgniInt');
	}	

	// ---- Visuals End ---- //

	public function ResetCharacter()
	{
		var witcher : W3PlayerWitcher = GetWitcherPlayer();
		
		witcher.ResetMutationsDev();
		witcher.ResetCharacterDev();
		witcher.Debug_ClearCharacterDevelopment(true);
		theGame.GetGuiManager().ShowNotification(GetLocStringByKeyExt("panel_character_popup_character_cleared"));
		theSound.SoundEvent("gui_character_synergy_effect");
	}

	public function Initialized() : bool
	{
		return ( StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('SCOptionSkills', 'VersionNr')) == 69.69 );
	}

	public final function FirstTimeOptionSetup()
	{
		var wrapper : CInGameConfigWrapper;
		
		wrapper = theGame.GetInGameConfigWrapper();
		if( !Initialized() )
		{
		// ---- Version Number Begin ---- //
			
			wrapper.SetVarValue('SCOptionSkills', 'VersionNr', "69.69");
			
		// ---- Version Number End ---- //
		
		// ---- General Begin ---- //
			
			wrapper.SetVarValue('SCOptionEq', 'DDamage', "0");
			wrapper.SetVarValue('SCOptionSkills', 'SPG', "1");
			
		// ---- General End ---- //
		
		// ---- Health Begin ---- //
			
			wrapper.SetVarValue('SCOptionH', 'PlayerHP', "1");
			wrapper.SetVarValue('SCOptionH', 'RelictHP', "1");
			wrapper.SetVarValue('SCOptionH', 'NecroHP', "1");
			wrapper.SetVarValue('SCOptionH', 'CursedHP', "1");
			wrapper.SetVarValue('SCOptionH', 'BeastHP', "1");
			wrapper.SetVarValue('SCOptionH', 'InsectoidHP', "1");
			wrapper.SetVarValue('SCOptionH', 'VampireHP', "1");
			wrapper.SetVarValue('SCOptionH', 'SpecterHP', "1");
			wrapper.SetVarValue('SCOptionH', 'DraconidHP', "1");
			wrapper.SetVarValue('SCOptionH', 'GriffinHP', "1");
			wrapper.SetVarValue('SCOptionH', 'HybridHP', "1");
			wrapper.SetVarValue('SCOptionH', 'TrollHP', "1");
			wrapper.SetVarValue('SCOptionH', 'NekkerHP', "1");
			wrapper.SetVarValue('SCOptionH', 'HumanHP', "1");
			wrapper.SetVarValue('SCOptionH', 'ElementalHP', "1");
			wrapper.SetVarValue('SCOptionH', 'WildHuntHP', "1");
			wrapper.SetVarValue('SCOptionH', 'AnimalsHP', "1");
			
		// ---- Health End ---- //
		
		// ---- Damage Begin ---- //
			
			wrapper.SetVarValue('SCOptionD', 'PDam', "1");
			wrapper.SetVarValue('SCOptionD', 'PDamC', "1");
			wrapper.SetVarValue('SCOptionD', 'PDamS', "1");
			wrapper.SetVarValue('SCOptionD', 'PDamB', "1");
			wrapper.SetVarValue('SCOptionD', 'PAPMult', "1");
			wrapper.SetVarValue('SCOptionD', 'EAPMult', "1");
			wrapper.SetVarValue('SCOptionD', 'ELightAPMult', "1");
			wrapper.SetVarValue('SCOptionD', 'EHeavyAPMult', "1");
			wrapper.SetVarValue('SCOptionD', 'RelictDam', "1");
			wrapper.SetVarValue('SCOptionD', 'NecroDam', "1");
			wrapper.SetVarValue('SCOptionD', 'CursedDam', "1");
			wrapper.SetVarValue('SCOptionD', 'BeastDam', "1");
			wrapper.SetVarValue('SCOptionD', 'InsectoidDam', "1");
			wrapper.SetVarValue('SCOptionD', 'VampireDam', "1");
			wrapper.SetVarValue('SCOptionD', 'SpecterDam', "1");
			wrapper.SetVarValue('SCOptionD', 'DraconidDam', "1");
			wrapper.SetVarValue('SCOptionD', 'GriffinDam', "1");
			wrapper.SetVarValue('SCOptionD', 'HybridDam', "1");
			wrapper.SetVarValue('SCOptionD', 'TrollDam', "1");
			wrapper.SetVarValue('SCOptionD', 'NekkerDam', "1");
			wrapper.SetVarValue('SCOptionD', 'HumanDam', "1");
			wrapper.SetVarValue('SCOptionD', 'ElementalDam', "1");
			wrapper.SetVarValue('SCOptionD', 'WildHuntDam', "1");
			wrapper.SetVarValue('SCOptionD', 'AnimalsDam', "1");
			wrapper.SetVarValue('SCOptionD', 'PDOT', "1.0");
			wrapper.SetVarValue('SCOptionD', 'EDOT', "1.0");
			
		// ---- Damage End ---- //
		
		// ---- Combat Start ---- //
			
			wrapper.SetVarValue('SCOptionCM', 'Lockon', "0");
			wrapper.SetVarValue('SCOptionCM', 'LockonM', "0");
			wrapper.SetVarValue('SCOptionCM', 'LockonMSF', "0");
			wrapper.SetVarValue('SCOptionCM', 'PadDistLong', "0.9");
			wrapper.SetVarValue('SCOptionCM', 'PadDistMed', "0.4");
			wrapper.SetVarValue('SCOptionCM', 'Combatstate', "1");
			wrapper.SetVarValue('SCOptionCM', 'SignInstantCast', "1");
			
		///////////////////////////////////////////////////////////////////////////////////////////////
			
			wrapper.SetVarValue('SCOptionCW', 'ASSD', "1");
			wrapper.SetVarValue('SCOptionCW', 'FASC', "6");
			wrapper.SetVarValue('SCOptionCW', 'SASC', "9");
			wrapper.SetVarValue('SCOptionCW', 'EVSC', "6");
			wrapper.SetVarValue('SCOptionCW', 'BLSC', "5");
			wrapper.SetVarValue('SCOptionCW', 'COSC', "8");
			wrapper.SetVarValue('SCOptionCW', 'COSCK', "9");
			wrapper.SetVarValue('SCOptionCW', 'COSCB', "9");
			wrapper.SetVarValue('SCOptionCW', 'RDSC', "0.8");
			wrapper.SetVarValue('SCOptionCW', 'RDSCH', "1.1");
			wrapper.SetVarValue('SCOptionCW', 'RDSCD', "0.9");
			wrapper.SetVarValue('SCOptionCW', 'RDSCB', "0.5");
			wrapper.SetVarValue('SCOptionCW', 'RDSCC', "0.8");
			wrapper.SetVarValue('SCOptionCW', 'RDSCCK', "1.0");
			wrapper.SetVarValue('SCOptionCW', 'RDSCCB', "1.0");
			wrapper.SetVarValue('SCOptionCW', 'ASDPS', "0");
			wrapper.SetVarValue('SCOptionCW', 'ASDPH', "10");
			wrapper.SetVarValue('SCOptionCW', 'ASFA', "0.02");
			wrapper.SetVarValue('SCOptionCW', 'ASHA', "0.03");
			wrapper.SetVarValue('SCOptionCW', 'ASDR', "0.03");
			wrapper.SetVarValue('SCOptionCW', 'ASFAN', "1");
			wrapper.SetVarValue('SCOptionCW', 'ASHAN', "1");
			wrapper.SetVarValue('SCOptionCW', 'ASDRN', "1");
			wrapper.SetVarValue('SCOptionCW', 'ASAPF', "0.01");
			wrapper.SetVarValue('SCOptionCW', 'ASAPH', "0.02");
			wrapper.SetVarValue('SCOptionCW', 'LightIn', "0.01");
			wrapper.SetVarValue('SCOptionCW', 'HeavyDe', "0.02");
			
		///////////////////////////////////////////////////////////////////////////////////////////////
			
			wrapper.SetVarValue('SCOptionCP', 'PCheck', "0");
			wrapper.SetVarValue('SCOptionCP', 'PCheckS', "0");
			wrapper.SetVarValue('SCOptionCP', 'PCheckA', "1");
			wrapper.SetVarValue('SCOptionCP', 'CCheckA', "0");
			wrapper.SetVarValue('SCOptionCP', 'CCheck', "1");
			wrapper.SetVarValue('SCOptionCP', 'CADRG', "1");
			wrapper.SetVarValue('SCOptionCP', 'CADRGA', "2");
			wrapper.SetVarValue('SCOptionCP', 'BleedDam', "50");
			wrapper.SetVarValue('SCOptionCP', 'BleedDur', "2");
			wrapper.SetVarValue('SCOptionCP', 'StamDam', "15");
			wrapper.SetVarValue('SCOptionCP', 'StamDur', "2.5");
			wrapper.SetVarValue('SCOptionCP', 'DisarmSH', "1");
			wrapper.SetVarValue('SCOptionCP', 'CTH', "0");
			wrapper.SetVarValue('SCOptionCP', 'CTHH', "0");
			wrapper.SetVarValue('SCOptionCP', 'CTHSH', "0");
			wrapper.SetVarValue('SCOptionCP', 'CTM', "0");
			wrapper.SetVarValue('SCOptionCP', 'CTMH', "0");
			
		///////////////////////////////////////////////////////////////////////////////////////////////
			
			wrapper.SetVarValue('SCOptionCR', 'RSFV', "1");
			wrapper.SetVarValue('SCOptionCR', 'RSAF', "0");
			wrapper.SetVarValue('SCOptionCR', 'Dism', "100");
			wrapper.SetVarValue('SCOptionCR', 'Finish', "60");
			wrapper.SetVarValue('SCOptionCR', 'RSAGF', "30");
			wrapper.SetVarValue('SCOptionCR', 'RSAGD', "0");
			
		///////////////////////////////////////////////////////////////////////////////////////////////
			
			wrapper.SetVarValue('SCOptionCA', 'CADRDeg', "1");
			wrapper.SetVarValue('SCOptionCA', 'ADRP', "3");
			wrapper.SetVarValue('SCOptionCA', 'ADRGenH', "1.0");
			wrapper.SetVarValue('SCOptionCA', 'ADRGenD', "1.0");
			wrapper.SetVarValue('SCOptionCA', 'ADRDegH', "10");
			wrapper.SetVarValue('SCOptionCA', 'ADRDegHH', "10");
			wrapper.SetVarValue('SCOptionCA', 'ADRDegHSH', "6.7");
			wrapper.SetVarValue('SCOptionCA', 'AdrVigInt', "20");
			
		///////////////////////////////////////////////////////////////////////////////////////////////
			
			wrapper.SetVarValue('SCOptionCP', 'KAT', "1");
			wrapper.SetVarValue('SCOptionCP', 'KST', "75");
			wrapper.SetVarValue('SCOptionCP', 'KHT', "60");
			
		///////////////////////////////////////////////////////////////////////////////////////////////
			
			wrapper.SetVarValue('SCOptionCWh', 'WhSU', "0.4");
			wrapper.SetVarValue('SCOptionCWh', 'WhDM', "0.8");
			wrapper.SetVarValue('SCOptionCWh', 'WhER', "0");
			
		///////////////////////////////////////////////////////////////////////////////////////////////
			
			wrapper.SetVarValue('SCOptionRend', 'ReSU', "1.0");
			wrapper.SetVarValue('SCOptionRend', 'ReDM', "1.0");
			wrapper.SetVarValue('SCOptionRend', 'ReDPS', "1");
			wrapper.SetVarValue('SCOptionRend', 'ReER', "0");
			
		////////////////////////////////////////////////////////////////////////////////////////////////
			
			wrapper.SetVarValue('SCOptionSO', 'SOT', "1");
			wrapper.SetVarValue('SCOptionSO', 'SCost', "20");
			wrapper.SetVarValue('SCOptionSO', 'SCostS', "30");
			wrapper.SetVarValue('SCOptionSO', 'SPen', "0.7");
			
		// ---- Combat End ---- //
		
		// ---- Enemies Start ---- //
			
			wrapper.SetVarValue('SCOptionCE', 'EnAgg', "5");
			wrapper.SetVarValue('SCOptionCE', 'EDND', "1");
			wrapper.SetVarValue('SCOptionCE', 'EDDN', "15");
			
			// GROUP 1 Unskilled
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits1', "0");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits2', "45");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits3', "30");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits4', "-10");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits5', "50");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits6', "10");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits7', "15");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits8', "0");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits9', "0");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits10', "0");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits11', "0");
			wrapper.SetVarValue('SCOptionCE1', 'BlockHits12', "10");
			
			// GROUP 2 Novice
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits1', "0");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits2', "45");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits3', "20");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits4', "10");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits5', "60");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits6', "15");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits7', "20");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits8', "0");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits9', "3");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits10', "1");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits11', "15");
			wrapper.SetVarValue('SCOptionCE2', 'BlockHits12', "10");
			
			// GROUP 3 Adept
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits1', "0");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits2', "60");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits3', "15");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits4', "20");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits5', "70");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits6', "20");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits7', "25");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits8', "5");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits9', "15");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits10', "1");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits11', "30");
			wrapper.SetVarValue('SCOptionCE3', 'BlockHits12', "0");
			
			// GROUP 4 Expert
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits1', "0");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits2', "60");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits3', "5");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits4', "40");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits5', "80");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits6', "25");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits7', "30");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits8', "25");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits9', "50");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits10', "0");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits11', "0");
			wrapper.SetVarValue('SCOptionCE4', 'BlockHits12', "40");
			
			// GROUP 5 Veteran
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits1', "0");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits2', "75");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits3', "0");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits4', "25");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits5', "90");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits6', "30");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits7', "30");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits8', "70");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits9', "80");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits10', "0");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits11', "30");
			wrapper.SetVarValue('SCOptionCE5', 'BlockHits12', "50");
			
			// GROUP 6 Novice Shield
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits1', "0");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits2', "100");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits3', "10");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits4', "-10");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits5', "100");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits6', "0");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits7', "0");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits8', "0");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits9', "0");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits10', "1");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits11', "20");
			wrapper.SetVarValue('SCOptionCE6', 'BlockHits12', "0");
			
			// GROUP 7 Expert Shield
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits1', "0");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits2', "100");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits3', "0");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits4', "40");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits5', "100");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits6', "0");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits7', "0");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits8', "0");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits9', "0");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits10', "1");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits11', "60");
			wrapper.SetVarValue('SCOptionCE7', 'BlockHits12', "0");
			
			// GROUP 8 2 Handed
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits1', "0");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits2', "35");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits3', "20");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits4', "50");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits5', "85");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits6', "10");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits7', "25");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits8', "0");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits9', "0");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits10', "1");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits11', "100");
			wrapper.SetVarValue('SCOptionCE8', 'BlockHits12', "30");
			
			// GROUP 9 Large Monster
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits1', "0");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits2', "50");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits3', "0");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits4', "40");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits5', "100");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits6', "10");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits7', "20");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits8', "0");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits9', "0");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits10', "0");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits11', "50");
			wrapper.SetVarValue('SCOptionCE9', 'BlockHits12', "25");
			
			// GROUP 10 Small Monster
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits1', "0");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits2', "100");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits3', "50");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits4', "0");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits5', "100");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits6', "25");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits7', "35");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits8', "15");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits9', "20");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits10', "0");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits11', "0");
			wrapper.SetVarValue('SCOptionCE10', 'BlockHits12', "34");
			
			
			// ---- Soft Lock Start ---- //
			
			wrapper.SetVarValue( 'EnhancedTargeting', 'ETEnabled', true);
			wrapper.SetVarValue( 'EnhancedTargeting', 'ETCameraWeight', "0.5");
			wrapper.SetVarValue( 'EnhancedTargeting', 'ETMovementWeight', "1.5");
			wrapper.SetVarValue( 'EnhancedTargeting', 'ETFacingWeight', "0");
			wrapper.SetVarValue( 'EnhancedTargeting', 'ETHysteresis', "1.05");
			wrapper.SetVarValue( 'EnhancedTargeting', 'ETInFrameCheck', false);
			wrapper.SetVarValue( 'EnhancedTargeting', 'ETSignsTowardsCamera', true);
			wrapper.SetVarValue( 'EnhancedTargeting', 'ETDisableCameraLock', true);
			
			// ---- Soft Lock End ---- //
			
			// ---- Exploration Start ---- //
			
			wrapper.SetVarValue('SCOptionEx', 'FallingDamage', true);
			wrapper.SetVarValue('SCOptionEx', 'SStamUsage', "0");
			wrapper.SetVarValue('SCOptionEx', 'SStamDelExpl', "0");	
			wrapper.SetVarValue('SCOptionEx', 'SStamDelComb', "0");	
			wrapper.SetVarValue('SCOptionEx', 'SStamInstDr', false);
			wrapper.SetVarValue('SCOptionEx', 'SStamIndoor', false);
			
			// ---- Exploration End ---- //
			
			// ---- Skills Start ---- //
			
			wrapper.SetVarValue('SCOptionSkills', 'SlotsUnlocked', false);
			wrapper.SetVarValue('SCOptionSkills', 'MutsUnlocked', false);
			wrapper.SetVarValue('SCOptionSkills', 'PointReq', false);
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateGeneral', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateFast', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateStrong', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateUtility', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateCrossbow', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateTrance', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateAard', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateIgni', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateYrden', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateQuen', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateAxii', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRatePotions', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateOils', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateBombs', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateMutagens', "1.0");
			wrapper.SetVarValue('SCOptionSkills', 'SkillRateGrasses', "1.0");
			
			// ---- Skills End ---- //
			
			// ---- Visuals Start ---- //
			
			wrapper.SetVarValue('SCOptionVisuals', 'BloodActive', true);
			wrapper.SetVarValue('SCOptionVisuals', 'BloodActiveRange', true);
			wrapper.SetVarValue('SCOptionVisuals', 'BloodOnlyCrit', false);	
			wrapper.SetVarValue('SCOptionVisuals', 'BloodSpray', true);	
			wrapper.SetVarValue('SCOptionVisuals', 'BloodSprayMaj', false);	
			wrapper.SetVarValue('SCOptionVisuals', 'BloodTrail', false);	
			wrapper.SetVarValue('SCOptionVisuals', 'SignAardInt', false);
			wrapper.SetVarValue('SCOptionVisuals', 'SignIgniInt', false);
			
			// ---- Visuals End ---- //
			
			// ---- Inventory Start ---- //
			
			wrapper.SetVarValue('SCOptionInv', 'CWGeralt', "75");
			wrapper.SetVarValue('SCOptionInv', 'CWHorse', "250");
			wrapper.SetVarValue('SCOptionInv', 'HorseInv', false);
			wrapper.SetVarValue('SCOptionInv', 'WAlch', true);
			wrapper.SetVarValue('SCOptionInv', 'WMoney', true);
			wrapper.SetVarValue('SCOptionInv', 'WQuest', true);
			wrapper.SetVarValue('SCOptionInv', 'WMisc', true);
			wrapper.SetVarValue('SCOptionInv', 'CInvent', false);
			
			// ---- Inventory End ---- //
			
			// ---- Injuries Start ---- //
			
			wrapper.SetVarValue('SCOptionIN', 'InjChan', "2");
			wrapper.SetVarValue('SCOptionIN', 'InjPImm', false);
			wrapper.SetVarValue('SCOptionIN', 'InjMess', false);
			
			// ---- Injuries End ---- //
			
			OptionSetupPart2();
			
			theGame.SaveUserSettings();
		}
	}
	
	private function OptionSetupPart2()
	{
		var wrapper : CInGameConfigWrapper;
		
		wrapper = theGame.GetInGameConfigWrapper();
			
			// ---- Preparation Start ---- //
			
			wrapper.SetVarValue('SCOptionPrepMed', 'PrepTimb', "2");
			wrapper.SetVarValue('SCOptionPrepMed', 'PrepHTimb', "1");
			wrapper.SetVarValue('SCOptionPrepMed', 'PrepLVL', false);
			wrapper.SetVarValue('SCOptionPrepMed', 'PrepTalents', false);
			wrapper.SetVarValue('SCOptionPrepMed', 'PrepUpgrade', false);
			wrapper.SetVarValue('SCOptionPrepMed', 'PrepCamLock', true);
			wrapper.SetVarValue('SCOptionPrepMed', 'PrepMenu', "1");
			wrapper.SetVarValue('SCOptionPrepMed', 'PrepTimeScale', "50");
			
			// ---- Preparation End ---- //
			
			// ---- Alchemy Start ---- //
			
			wrapper.SetVarValue('SCOptionPrepAlch', 'potion_cooked_quantity', "1");
			wrapper.SetVarValue('SCOptionPrepAlch', 'oil_cooked_quantity', "1");
			wrapper.SetVarValue('SCOptionPrepAlch', 'bomb_cooked_quantity', "1");
			wrapper.SetVarValue('SCOptionPrepAlch', 'alchemy_time_cost', "8");
			wrapper.SetVarValue('SCOptionPrepAlch', 'distillation_time', "35");
			wrapper.SetVarValue('SCOptionPrepAlch', 'max_potion_count', "0");
			wrapper.SetVarValue('SCOptionPrepAlch', 'max_bomb_count', "0");
			wrapper.SetVarValue('SCOptionPrepAlch', 'max_oil_count', "0");
			wrapper.SetVarValue('SCOptionPrepAlch', 'global_potion_duration', "0");
			wrapper.SetVarValue('SCOptionPrepAlch', 'mutagen_potion_duration', "0");
			wrapper.SetVarValue('SCOptionPrepAlch', 'oil_duration', "0");
			wrapper.SetVarValue('SCOptionPrepAlch', 'global_mininum_potion_duration', "0");
			wrapper.SetVarValue('SCOptionPrepAlch', 'mutagen_mininum_potion_duration', "0");
			wrapper.SetVarValue('SCOptionPrepAlch', 'oil_minimum_duration', "0");
			wrapper.SetVarValue('SCOptionPrepAlch', 'potion_duration_multiplier', "1");
			wrapper.SetVarValue('SCOptionPrepAlch', 'mutagen_duration_multiplier', "1");
			wrapper.SetVarValue('SCOptionPrepAlch', 'oil_duration_multiplier', "1");
			wrapper.SetVarValue('SCOptionPrepAlch', 'fade_out_alchemy', "1");
			wrapper.SetVarValue('SCOptionPrepAlch', 'alchemy_anywhere', "0");
			
			// ---- Alchemy End ---- //
			
			// ---- Animations Start ---- //
			
			wrapper.SetVarValue('SCOptionAnims', 'AnimCombat', "1");
			wrapper.SetVarValue('SCOptionAnims', 'AnimDrink', "1");
			wrapper.SetVarValue('SCOptionAnims', 'AnimEat', "1");
			wrapper.SetVarValue('SCOptionAnims', 'AnimOil', "1");
			wrapper.SetVarValue('SCOptionAnims', 'AnimLoot', "1");
			
			// ---- Animations End ---- //
			
			// ---- Toxicity Start ---- //
			
			wrapper.SetVarValue('SCOptionTox', 'standard_degeneration_rate', "0.25");
			wrapper.SetVarValue('SCOptionTox', 'accelerated_degeneration_rate', "1.75");
			wrapper.SetVarValue('SCOptionTox', 'accelerated_degeneration_threshold', "0.25");
			wrapper.SetVarValue('SCOptionTox', 'deccelerated_combat_degeneration', false);
			wrapper.SetVarValue('SCOptionTox', 'combat_degeneration_rate', "0");
			wrapper.SetVarValue('SCOptionTox', 'residual_degeneration_rate', "0.1");
			wrapper.SetVarValue('SCOptionTox', 'potion_drunk_dur_low', "1");
			wrapper.SetVarValue('SCOptionTox', 'potion_drunk_dur_high', "10");
			
			// ---- Toxicity End ---- //
			
			// ---- HUD Begin ---- //
			
			wrapper.SetVarValue('fhudHUD', 'fhudEnableCombatModules', false);
			wrapper.SetVarValue('fhudHUD', 'fhudEnableCombatModulesOnUnsheathe', false);
			wrapper.SetVarValue('fhudHUD', 'fhudEnableWolfModuleOnVitalityChanged', true);
			wrapper.SetVarValue('fhudHUD', 'fhudEnableWolfModuleOnStaminaChanged', true);
			wrapper.SetVarValue('fhudHUD', 'fhudEnableWolfModuleOnVigorChanged', true);
			wrapper.SetVarValue('fhudHUD', 'fhudEnableWitcherSensesModules', true);
			wrapper.SetVarValue('fhudHUD', 'fhudEnableMeditationModules', true);
			wrapper.SetVarValue('fhudHUD', 'fhudEnableRadialMenuModules', true);
			wrapper.SetVarValue('fhudHUD', 'fhudHideJournalUpdates', false);
			wrapper.SetVarValue('fhudHUD', 'fhudFadeOutTimeSeconds', "3.2");
			
			// ---- HUD End ---- //
			
			// ---- Markers Begin ---- //
			
			wrapper.SetVarValue('fhudMarkers', 'fhud3DMarkersEnabled', true);
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkerIconDisplayMode', "0");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkerDescriptionDisplayMode', "0");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkerDistanceDisplayMode', "0");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkerIconType', "0");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkerOnScreenOnly', false);
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersIconSizePrc', "50");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersDescriptionTextSize', "15");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersDistanceTextSize', "15");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersAltTextSize', "15");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkerMinDistance', "4");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkerMaxDistance', "100");
			wrapper.SetVarValue('fhudMarkers', 'fhudCompassMarkersEnabled', false);
			wrapper.SetVarValue('fhudMarkers', 'fhudProject3DMarkersOnCompass', true);
			wrapper.SetVarValue('fhudMarkers', 'fhudCompassScreenPosY', "1");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersFadeOutDelay', "3");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowQuests', "2");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowQuestsAll', "0");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowUser', "0");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowUserAll', "0");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowMapLoc', "1");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowNPCs', "1");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowPOIs', "0");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowDisabled', "1");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowUndiscovered', "1");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowMisc', "1");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowHerbs', "1");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowEnemies', "1");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowDeadEnemies', "1");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersShowWSClues', "1");
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkerHideActivities', true);
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkerShowUndiscoveredRoadsigns', false);
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkerPinWithUserMarker', true);
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersSyncWithMap', true);
			wrapper.SetVarValue('fhudMarkers', 'fhudMarkersTransparency', "0");
			
			// ---- Markers End ---- //
			
			// ---- Quick Items Begin ---- //
			
			wrapper.SetVarValue('fhudQuickItems', 'fhudEnableItemsInRadialMenu', true);
			wrapper.SetVarValue('fhudQuickItems', 'fhudDefaultDisplayMode', "3");
			wrapper.SetVarValue('fhudQuickItems', 'fhudCycleThroughBuffs', true);
			wrapper.SetVarValue('fhudQuickItems', 'fhudEnableWASD', false);
			wrapper.SetVarValue('fhudQuickItems', 'fhudApplyOilToDrawnSword', true);
			wrapper.SetVarValue('fhudQuickItems', 'fhudRadialMenuTimescale', "0.05");
			
			// ---- Quick Items End ---- //
			
			// ---- Map Begin ---- //
			
			wrapper.SetVarValue('fhudMap', 'fhudMapUnlimitedZoom', true);
			wrapper.SetVarValue('fhudMap', 'fhudMapZoomMinCoef', "2.5");
			wrapper.SetVarValue('fhudMap', 'fhudMapZoomMaxCoef', "0.5");
			wrapper.SetVarValue('fhudMap', 'fhudMinimapZoomExterior', "0.5");
			wrapper.SetVarValue('fhudMap', 'fhudMinimapZoomInterior', "1");
			wrapper.SetVarValue('fhudMap', 'fhudMinimapZoomBoat', "0.5");
			
			// ---- Map End ---- //
			
			// ---- Inventory Menu Begin ---- //
			
			wrapper.SetVarValue('fhudInventory', 'fhudDefaultInventoryTab', "0");
			wrapper.SetVarValue('fhudInventory', 'fhudResetNewItemsIngredients', true);
			wrapper.SetVarValue('fhudInventory', 'fhudResetNewItemsQuest', true);
			wrapper.SetVarValue('fhudInventory', 'fhudResetNewItemsOthers', true);
			wrapper.SetVarValue('fhudInventory', 'fhudResetNewItemsEdibles', true);
			wrapper.SetVarValue('fhudInventory', 'fhudResetNewItemsRoach', true);
			wrapper.SetVarValue('fhudInventory', 'fhudResetNewItemsAlchemy', true);
			wrapper.SetVarValue('fhudInventory', 'fhudResetNewItemsEquipment', false);
			wrapper.SetVarValue('fhudInventory', 'fhudShowTrueItemPrice', true);
			wrapper.SetVarValue('fhudInventory', 'fhudShowStashItemQuantity', true);
			wrapper.SetVarValue('fhudInventory', 'fhudShowRecyclingParts', true);
			wrapper.SetVarValue('fhudInventory', 'fhudShowItemCountWhenCrafting', true);
			
			// ---- Inventory Menu End ---- //
			
			// ---- Interaction Begin ---- //
			
			wrapper.SetVarValue('fhudInteractions', 'fhudDisableAllInteractionPrompts', false);
			wrapper.SetVarValue('fhudInteractions', 'fhudTalkBubbleMode', "3");
			wrapper.SetVarValue('fhudInteractions', 'fhudTalkButtonMode', "2");
			wrapper.SetVarValue('fhudInteractions', 'fhudInteractionButtonMode', "2");
			wrapper.SetVarValue('fhudInteractions', 'fhudHideWSInteractionIcons', false);
			wrapper.SetVarValue('fhudInteractions', 'fhudMaxDistanceToShowNames', "3");
			wrapper.SetVarValue('fhudInteractions', 'fhudHideAnimalNames', true);
			wrapper.SetVarValue('fhudInteractions', 'fhudHideHerbNames', false);
			wrapper.SetVarValue('fhudInteractions', 'fhudHideNPCQuestMarkers', true);
			
			// ---- Interaction End ---- //
			
			// ---- Main Menu Begin ---- //
			
			wrapper.SetVarValue('fhudMainMenu', 'fhudMainMenuMode', "3");
			wrapper.SetVarValue('fhudMainMenu', 'fhudHideDLC', true);
			
			// ---- Main Menu End ---- //
			
			// ---- Miscellaneous Begin ---- //
			
			wrapper.SetVarValue('fhudMisc', 'fhudDoNotShowDamage', true);
			wrapper.SetVarValue('fhudMisc', 'fhudSilentJournalUpdates', false);
			
			// ---- Miscellaneous End ---- //
			
			// ---- Vanilla HUD Begin ---- //
			
			wrapper.SetVarValue('Hud', 'HudVisibility', true);
			wrapper.SetVarValue('Hud', 'HudSize', 0);
			wrapper.SetVarValue('Hud', 'ConsoleModule', false);
			wrapper.SetVarValue('Hud', 'Minimap2Module', false);
			wrapper.SetVarValue('Hud', 'MinimapRotation', true);
			wrapper.SetVarValue('Hud', 'MinimapFocusClues', true);
			wrapper.SetVarValue('Hud', 'MinimapTracksWaypoints', false);
			wrapper.SetVarValue('Hud', 'MiminapPoiQuestionMarks', true);
			wrapper.SetVarValue('Hud', 'MinimapPoiCompletedIcons', true);
			wrapper.SetVarValue('Hud', 'OnelinersModule', false);
			wrapper.SetVarValue('Hud', 'QuestsModule', false);
			wrapper.SetVarValue('Hud', 'WolfMedalion', false);
			wrapper.SetVarValue('Hud', 'BuffsModule', true);
			wrapper.SetVarValue('Hud', 'OxygenBarModule', true);
			wrapper.SetVarValue('Hud', 'MessageModule', true);
			wrapper.SetVarValue('Hud', 'ControlsFeedbackModule', false);
			wrapper.SetVarValue('Hud', 'DamagedItemsModule', false);
			wrapper.SetVarValue('Hud', 'ItemInfoModule', false);
			wrapper.SetVarValue('Hud', 'TimeLapseModule', true);
			wrapper.SetVarValue('Hud', 'BossFocusModule', true);
			wrapper.SetVarValue('Hud', 'EnemyFocusModule', true);
			wrapper.SetVarValue('Hud', 'EnemyHitEffects', true);
			wrapper.SetVarValue('Hud', 'NPCNames', true);
			wrapper.SetVarValue('Hud', 'BoatHealthModule', false);
			wrapper.SetVarValue('Hud', 'CompanionModule', false);
			wrapper.SetVarValue('Hud', 'HorsePanicBarModule', false);
			wrapper.SetVarValue('Hud', 'HorseStaminaBarModule', true);
			wrapper.SetVarValue('Gameplay', 'MotionSicknessFocusMode', true);
			wrapper.SetVarValue('Gameplay', 'EnableUberMovement', "1");
			
			// ---- Vanilla HUD End ---- //
			
			// ---- Category Prices Begin ---- //
			wrapper.SetVarValue('LFEcat', 'LFEcatSteel', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatSilver', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatBow', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatBolt', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatArmor', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatPants', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatBoots', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatGloves', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatTrophy', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatHorseBag', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatFood', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatPotion', "0.0");
			wrapper.SetVarValue('LFEcat', 'LFEcatBomb', "0");
			wrapper.SetVarValue('LFEcat', 'LFEcatUse', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatDye', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatTool', "1.0");
			wrapper.SetVarValue('LFEcat', 'LFEcatOil', "0.0");
			wrapper.SetVarValue('LFEcat', 'LFEcatMisc', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatJunk', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatBook', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatUpgrade', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatCraft', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatAlchemy', "1");
			wrapper.SetVarValue('LFEcat', 'LFEcatDiagram', "1");
			// ---- Category Prices End ---- //
			
			// ---- Quality Prices Begin ---- //
			wrapper.SetVarValue('LFEq', 'LFEqCommon', "1");
			wrapper.SetVarValue('LFEq', 'LFEqMaster', "1");
			wrapper.SetVarValue('LFEq', 'LFEqMagic', "1");
			wrapper.SetVarValue('LFEq', 'LFEqRelic', "1");
			wrapper.SetVarValue('LFEq', 'LFEqWitcher', "1");
			// ---- Quality Prices End ---- //
			
			// ---- Durability Prices Begin ---- //
			wrapper.SetVarValue('LFEdur', 'LFEdur50', "0.2");
			wrapper.SetVarValue('LFEdur', 'LFEdur75', "0.6");
			wrapper.SetVarValue('LFEdur', 'LFEdur90', "0.8");
			wrapper.SetVarValue('LFEdur', 'LFEdur100', "0.9");
			// ---- Durability Prices End ---- //
			
			
			// ---- Misc Prices Begin ---- //
			wrapper.SetVarValue('LFEsb', 'LFEsbSell', "0.2");
			wrapper.SetVarValue('LFEsb', 'LFEsbBuy', "1");
			wrapper.SetVarValue('LFEmisc', 'LFEgold', "1.0");
			wrapper.SetVarValue('LFEmisc', 'LFEcraftPrice', "1");
			wrapper.SetVarValue('LFEmisc', 'LFEdialog', "0.2");
			wrapper.SetVarValue('LFEmisc', 'LFErepair', "1.0");
			wrapper.SetVarValue('LFEmisc', 'LFEremup', "1.0");
			wrapper.SetVarValue('LFEmisc', 'LFEdiss', "0.5");
			wrapper.SetVarValue('LFEmisc', 'LFEmed', false);
			// ---- Misc Prices End ---- //
			
			theGame.SaveUserSettings();
	}
	
	public function RelevelItems()
	{
		var inv : CInventoryComponent;
		var items : array<SItemUniqueId>;
		var itemName : name;
		var i : int;
		
		inv = GetWitcherPlayer().GetInventory();
		
		inv.GetAllItems(items);
		for(i=0; i<=items.Size(); i+=1)
		{
			itemName = inv.GetItemName( items[i] );
			switch( inv.GetItemCategory(items[i]) )
			{
				case 'armor':
				case 'gloves':
				case 'boots':
				case 'pants':
				case 'steelsword':
				case 'silversword':
				inv.RemoveItemByName( itemName, 1 ); inv.AddAnItem( itemName, 1 ); break;
			}
		}
	}
}

exec function RelevelItems()
{
	var inv : CInventoryComponent;
	var items : array<SItemUniqueId>;
	var itemName : name;
	var i : int;
	
	inv = GetWitcherPlayer().GetInventory();
	
	inv.GetAllItems(items);
	for(i=0; i<=items.Size(); i+=1)
	{
		itemName = inv.GetItemName( items[i] );
		switch( inv.GetItemCategory(items[i]) )
		{
			case 'armor':
			case 'gloves':
			case 'boots':
			case 'pants':
			case 'steelsword':
			case 'silversword':
			inv.RemoveItemByName( itemName, 1 ); inv.AddAnItem( itemName, 1 ); break;
		}
	}
}

exec function ResetCharacterSkills()
{
	var witcher : W3PlayerWitcher = GetWitcherPlayer();
	var items : array<SItemUniqueId>;
	var inv : CInventoryComponent;
	var itemName : name;
	var i : int;
	
	witcher.ResetMutationsDev();
	witcher.ResetCharacterDev();
	witcher.Debug_ClearCharacterDevelopment(true);
	theGame.GetGuiManager().ShowNotification(GetLocStringByKeyExt("panel_character_popup_character_cleared"));
	theSound.SoundEvent("gui_character_synergy_effect");
	
	inv = witcher.GetInventory();
	inv.GetAllItems(items);
	for(i=0; i<=items.Size(); i+=1)
	{
		itemName = inv.GetItemName( items[i] );
		switch( inv.GetItemCategory(items[i]) )
		{
			case 'armor':
			case 'gloves':
			case 'boots':
			case 'pants':
			case 'steelsword':
			case 'silversword':
			inv.RemoveItemByName( itemName, 1 ); inv.AddAnItem( itemName, 1 ); break;
		}
	}
}

exec function functest()
{
	var stateBase : CScriptableState;
	var stateHorse : CScriptableState;
	var stateExploration : CScriptableState;
	
	stateBase = GetWitcherPlayer().GetCurrentState();
	stateHorse = (CR4PlayerStateHorseRiding)stateBase;
	stateExploration = (CR4PlayerStateExploration)stateBase;
	
	return;
}