enum CompleteAnimationTypes {
	CAT_eat,
	CAT_drink,
	CAT_oil,
	CAT_grindstone,
	CAT_workbench,
	CAT_loot,
	CAT_deadbodyloot
}

class CompleteAnimations {
	public var anim						: int;
	public var isLoop					: bool;
	public var drinkMode					: name;
	public var suppressDrawSwordReaction 	: bool;
	public var prevState 				: name;
	public var potionId  				: SItemUniqueId;
	public var onHitInterrupt 			: bool;
	public var hornItem 					: name;
	public var secondHornItem				: name;
	public var usedLeftItem 				: bool;
	public var oilId 					: SItemUniqueId;
	public var usedOnItem 				: SItemUniqueId;
	public var container 				: W3Container;
	public var ItemToConsume 				: SItemUniqueId;
	public var SlotToConsume 				: EEquipmentSlots;
	
	public function SetUsedLeftItem( val : bool ) { usedLeftItem = val; }
	public function SetLoop( loop : bool ) { this.isLoop = loop; }
	public function SetContainer( cnt : W3Container ) { container = cnt; }
	public function SetItemToConsume( item : SItemUniqueId ) { ItemToConsume = item; }
	public function SetSlotToConsume( slot : EEquipmentSlots, item : SItemUniqueId) { SlotToConsume = slot; ItemToConsume = item; }
	public function SetOil( val : SItemUniqueId ) { oilId = val; }
	public function SetOilOnItem( val : SItemUniqueId ) { usedOnItem = val; }
	public function SetSlotToConsumeOne( slot : EEquipmentSlots ) { SlotToConsume = slot; }
			
	function DrinkAnim( mode : name, optional slot : EEquipmentSlots ) {
		var item : SItemUniqueId = ItemToConsume;
		var slotvar : EEquipmentSlots = SlotToConsume;
		
		if ( mode == 'CADrinkPotion' ) {
			GetWitcherPlayer().GetItemEquippedOnSlot(slotvar, item);
			if ( !GetWitcherPlayer().inv.HasItemById(item) || GetWitcherPlayer().inv.SingletonItemGetAmmo(item) == 0 ) 
				return;
		}
		
		if (!PerformingAnimation()) {
			if (CADrinkAnimType() == DAT_horn || !( thePlayer.GetCurrentStateName() == 'Exploration' || thePlayer.IsInCombat() ) || (thePlayer.IsInCombat() && ( CADrinkAnimType() == DAT_cupcombat || CADrinkAnimType() == DAT_bottlecombat )) || (( thePlayer.GetCurrentStateName() == 'Exploration' || thePlayer.IsInCombat() ) && ( mode == 'CADrinkPotion' || mode == 'CADrinkPotionInv') ) ) {
			
				BlockAllDrinkingActions();
				
				if ( mode == 'CADrinkPotion' || mode == 'CADrinkPotionInv')
					hornItem = 'PN_Potion';
				else
					hornItem = 'PN_Bottle';
				if (GetWitcherPlayer().IsCurrentlyUsingItemL())
				{
					GetWitcherPlayer().OnUseSelectedItem();
					usedLeftItem = true;
					thePlayer.AddTimer( 'CATimerPlayHorn', 1.35, false );
					GetWitcherPlayer().AddTimer( mode, 2.55 );
				}
				else {
					usedLeftItem = false;
					PlayHorn();
					GetWitcherPlayer().AddTimer( mode, 1.2 );
				}
				theGame.GetGuiManager().GetCommonMenu().CloseMenu();
			} else {
				anim = CAT_drink;
				theGame.GetGuiManager().GetCommonMenu().CloseMenu();
				drinkMode = mode;
				SheatheSwordIfUnsheatedAndPlayAnimation();
			}
		}
	}

	function EatAnim() {
		if (!PerformingAnimation()) {
			
			if (CAEatAnimType() == EAT_horn || !( thePlayer.GetCurrentStateName() == 'Exploration' || thePlayer.IsInCombat() )  || (thePlayer.IsInCombat() && ( CAEatAnimType() == EAT_shortcombat || CAEatAnimType() == EAT_longcombat ) ) ) {
			
				BlockAllDrinkingActions();
				
				hornItem = 'goods_apple';
				if (GetWitcherPlayer().IsCurrentlyUsingItemL())
				{
					GetWitcherPlayer().OnUseSelectedItem();
					usedLeftItem = true;
					thePlayer.AddTimer( 'CATimerPlayHorn', 1.35, false );
					GetWitcherPlayer().AddTimer( 'CAConsume', 2.55 );
				}
				else {
					usedLeftItem = false;
					PlayHorn();
					GetWitcherPlayer().AddTimer( 'CAConsume', 1.2 );
				}
				theGame.GetGuiManager().GetCommonMenu().CloseMenu();
				
			} else {
				anim = CAT_eat;
				theGame.GetGuiManager().GetCommonMenu().CloseMenu();
				SheatheSwordIfUnsheatedAndPlayAnimation();
			}
		}
	}

	function OilAnim( apply : name) {

		
		if (!PerformingAnimation()) {
		
			anim = CAT_oil;
			UnsheateRightSwordAndPlayAnimation( apply );
		
		}
	}

	function LootAnim( container : W3Container ) {
		if (!PerformingAnimation()) {
			if ((W3ActorRemains) container )			
				anim = CAT_deadbodyloot;
			else 
				anim = CAT_loot;
			thePlayer.SetCustomRotation('Loot', VecHeading(container.GetWorldPosition() - thePlayer.GetWorldPosition()), 360.f, 1.f, false);			
			SheatheSwordIfUnsheatedAndPlayAnimation();
		}
	}

	function GrindstoneAnim() {
		if (!PerformingAnimation()) {
		
			anim = CAT_grindstone;
			UnsheatheSwordAndPlayAnimation();

		}
	}

	function WorkbenchAnim() {
		if (!PerformingAnimation()) {
		
			anim = CAT_workbench;
			SheatheSwordIfUnsheatedAndPlayAnimation();
			
		}
	}

	/**************************************************************
			Sheathing/Unshealting swords before animations
	 **************************************************************/

	function TwoHandedAnim() : bool {
		return 
			( anim == CAT_drink && CADrinkAnimType() == DAT_bottle )
		 || anim == CAT_oil
		 || anim == CAT_workbench
		 || anim == CAT_grindstone;
	} 
	 
	function BlockAllDrinkingActions() {
		thePlayer.BlockAction(EIAB_DrawWeapon, 		'PotionAnimation');
		thePlayer.BlockAction(EIAB_Signs,				'PotionAnimation');
		thePlayer.BlockAction(EIAB_Crossbow,			'PotionAnimation');
		thePlayer.BlockAction(EIAB_UsableItem,			'PotionAnimation');
		thePlayer.BlockAction(EIAB_ThrowBomb,			'PotionAnimation');
		thePlayer.BlockAction(EIAB_SwordAttack,			'PotionAnimation');
		thePlayer.BlockAction(EIAB_Jump,				'PotionAnimation');
		thePlayer.BlockAction(EIAB_Roll,				'PotionAnimation');
		thePlayer.BlockAction(EIAB_LightAttacks,		'PotionAnimation');
		thePlayer.BlockAction(EIAB_HeavyAttacks,		'PotionAnimation');
		thePlayer.BlockAction(EIAB_SpecialAttackLight,	'PotionAnimation');
		thePlayer.BlockAction(EIAB_SpecialAttackHeavy,	'PotionAnimation');	
	}

	function UnblockAllDrinkingActions() {
		thePlayer.UnblockAction(EIAB_DrawWeapon, 		'PotionAnimation');
		thePlayer.UnblockAction(EIAB_Signs,			'PotionAnimation');
		thePlayer.UnblockAction(EIAB_Crossbow,			'PotionAnimation');
		thePlayer.UnblockAction(EIAB_UsableItem,		'PotionAnimation');
		thePlayer.UnblockAction(EIAB_ThrowBomb,			'PotionAnimation');
		thePlayer.UnblockAction(EIAB_SwordAttack,		'PotionAnimation');
		thePlayer.UnblockAction(EIAB_Jump,				'PotionAnimation');
		thePlayer.UnblockAction(EIAB_Roll,				'PotionAnimation');
		thePlayer.UnblockAction(EIAB_LightAttacks,		'PotionAnimation');
		thePlayer.UnblockAction(EIAB_HeavyAttacks,		'PotionAnimation');
		thePlayer.UnblockAction(EIAB_SpecialAttackLight,	'PotionAnimation');
		thePlayer.UnblockAction(EIAB_SpecialAttackHeavy,	'PotionAnimation');	
	}
	 
	function SheatheSwordIfUnsheatedAndPlayAnimation() {
		if (GetWitcherPlayer().IsWeaponHeld('silversword') || GetWitcherPlayer().IsWeaponHeld('steelsword')) {
		GetWitcherPlayer().OnEquipMeleeWeapon(PW_None, true, true);
			thePlayer.AddTimer('CAAnimState', 1.2);
		} else {
			thePlayer.GotoState('CAAnimation');
		}
		thePlayer.BlockAction( EIAB_DrawWeapon, 'Animation' );
	}

	function SheatheSword() {
		GetWitcherPlayer().OnEquipMeleeWeapon(PW_None, true, true);
	}

	function UnsheateRightSwordAndPlayAnimation( apply : name ) {
		var notApply : name;
		var weapon : EPlayerWeapon;
		
		if (apply == 'silversword') {
			notApply = 'steelsword';
			weapon = PW_Silver;
		} else {
			notApply = 'silversword';
			weapon = PW_Steel;
		}
		
		if ( thePlayer.GetCurrentStateName() == 'Exploration' || thePlayer.IsInCombat() ) {
			theGame.GetGuiManager().GetCommonMenu().CloseMenu();
			suppressDrawSwordReaction = true;
			GetWitcherPlayer().OnEquipMeleeWeapon(weapon, true);
			if (GetWitcherPlayer().IsWeaponHeld(apply)) {
				thePlayer.GotoState('CAAnimation');
			} else if (GetWitcherPlayer().IsWeaponHeld(notApply)) {
				thePlayer.AddTimer('CAAnimState', 2.6);
			} else {
				thePlayer.AddTimer('CAAnimState', 1.5);
			}	
		}
		thePlayer.BlockAction( EIAB_DrawWeapon, 'Animation' );
	}

	function UnsheatheSwordAndPlayAnimation() {
		var steel : SItemUniqueId;
		var silver : SItemUniqueId;
		var witcher : W3PlayerWitcher;
		
		witcher = GetWitcherPlayer();
		
		witcher.GetItemEquippedOnSlot(EES_SteelSword, steel);
		witcher.GetItemEquippedOnSlot(EES_SilverSword, silver);

		suppressDrawSwordReaction = true;
		
		if (!witcher.IsWeaponHeld('silversword') && !witcher.IsWeaponHeld('steelsword')) {
		
			if ( witcher.inv.ItemHasTag( steel, 'Wooden' ) || witcher.inv.ItemHasTag( steel, 'SecondaryWeapon'))
				if ( witcher.inv.HasItemById( silver ) ) {
					witcher.OnEquipMeleeWeapon(PW_Silver, true);
					thePlayer.AddTimer('CAAnimState', 1.5);
				} else {
					witcher.DisplayHudMessage(GetLocStringByKeyExt( "panel_hud_message_repair_nothing" ));
					suppressDrawSwordReaction = false;
					return;
				}
			else
				if ( witcher.inv.HasItemById( steel ) && witcher.inv.HasItemById( silver ) ) {
					if ( RandF() >= 0.5 )
						witcher.OnEquipMeleeWeapon(PW_Steel, true);
					else 
						witcher.OnEquipMeleeWeapon(PW_Silver, true);
				} else {
					if (witcher.inv.HasItemById( steel ) ) {
						witcher.OnEquipMeleeWeapon(PW_Steel, true);
					} else {
						witcher.OnEquipMeleeWeapon(PW_Silver, true);
					}
				}
				thePlayer.AddTimer('CAAnimState', 1.5);
		} else {
			
			if ( witcher.IsWeaponHeld('steelsword') ) {
				if ( witcher.inv.ItemHasTag( steel, 'Wooden' ) || witcher.inv.ItemHasTag( steel, 'SecondaryWeapon') ) {
					if ( witcher.inv.HasItemById( silver ) ) {
						witcher.OnEquipMeleeWeapon(PW_None, true);
						witcher.OnEquipMeleeWeapon(PW_Silver, true);
						thePlayer.AddTimer('CAAnimState', 3.0);
					} else {
						witcher.DisplayHudMessage(GetLocStringByKeyExt( "panel_hud_message_repair_nothing" ));
						suppressDrawSwordReaction = false;
						return;
					}
				} else {
					thePlayer.GotoState('CAAnimation');				
				}	
			} else {
				thePlayer.GotoState('CAAnimation');			
			}
		}
		thePlayer.BlockAction( EIAB_DrawWeapon, 'Animation' );
	}

	function PlayHorn() {		
		thePlayer.inv.AddAnItem( hornItem, 1, true, true );
		thePlayer.inv.MountItem( thePlayer.inv.GetItemId( hornItem ), true );
		
		thePlayer.SetBehaviorVariable( 'SelectedItemL', (int)UI_Horn, true );	
		thePlayer.RaiseEvent( 'ItemUseL' );
		
		thePlayer.AddTimer( 'CARemoveHornItem', 2.5, false );
		thePlayer.AddTimer( 'CAUnblockActions', 3.0, false );
		thePlayer.AddTimer( 'CAReuseUsableItem', 3.4, false );
	}

	function PerformingAnimation() : bool {
		return thePlayer.GetCurrentStateName() == 'CAAnimation' || thePlayer.GetCurrentStateName() == 'CAInterruption';
	}
	
}

state CAAnimation in CR4Player
{
	private var prevState : name ;
	private var speedMultID : int ;
	private var anim : int ;
	
	private var start : name ;
	private var loop : name ;
	private var stop : name ;
	private var startSpeed : float ;
	private var loopSpeed : float ;
	private var stopSpeed : float ;
	
	private var wasUsingItem : bool;
	
	event OnEnterState( prevStateName : name )
	{
		parent.AddTimer( 'CAInterruptMonitor', 0, true );
		super.OnEnterState(prevStateName);
		parent.BlockAction( EIAB_DrawWeapon, 'Animation' );
		prevState = prevStateName;
		parent.completeAnims.prevState = prevStateName;
		anim = parent.completeAnims.anim;
		if (GetWitcherPlayer().IsCurrentlyUsingItemL() && parent.completeAnims.TwoHandedAnim() ) {
			parent.OnUseSelectedItem();
			wasUsingItem = true;
		} else
			wasUsingItem = false;
		CASetUpAnimation();
		CAPlayAnimation();
	}
	
	event OnLeaveState( nextStateName : name )
	{
		parent.UnblockAction( EIAB_DrawWeapon, 'Animation' );
		parent.ResetAnimationSpeedMultiplier(speedMultID);
		super.OnLeaveState(nextStateName);
		parent.RemoveTimer('CAInterruptMonitor');
		parent.completeAnims.suppressDrawSwordReaction = false;
		if ( wasUsingItem ) {	
			parent.OnUseSelectedItem();
		}
		if ( ( anim == CAT_grindstone && CAGrindStoneAutoSheathe() ) || ( anim == CAT_oil && CAOilAutoSheathe() )) 
			parent.completeAnims.SheatheSword();
	}
	
	event OnTakeDamage( action : W3DamageAction ) {
		if( (W3PlayerWitcher)action.victim && action.DealsAnyDamage() && !((W3Effect_Toxicity)action.causer) )
		{
			parent.completeAnims.onHitInterrupt = true;
			parent.completeAnims.isLoop = false;
			parent.OnTakeDamage(action);
			parent.GotoState('CAInterruption');
		}		
	}
	
	entry function CAPlayAnimation()
	{
		var i : int; i = 0;
		if ( start != '' ) {
			speedMultID = parent.SetAnimationSpeedMultiplier( startSpeed , speedMultID );
			parent.ActionPlaySlotAnimation( 'PLAYER_SLOT', start, 1.0, 0.0 );
		}
		if ( loop != '') {
			speedMultID = parent.SetAnimationSpeedMultiplier( loopSpeed , speedMultID);
			do {
				parent.ActionPlaySlotAnimation( 'PLAYER_SLOT', loop );
			} while ( parent.completeAnims.isLoop );
		}
		if ( stop != '' ) {
			speedMultID = parent.SetAnimationSpeedMultiplier( stopSpeed , speedMultID);
			parent.ActionPlaySlotAnimation( 'PLAYER_SLOT', stop, 1.0, 1.0 );
		}			
		parent.GotoState( prevState );
	}
	
	function CASetUpAnimation() 
	{
		var drinksp, eatsp, oilsp, grindstonesp, workbenchsp, lootsp, dblootsp : float ;
			
		switch (anim) 
		{
			case CAT_drink:
				start = '';
				loop = '';
				if (CADrinkAnimType() == DAT_cup || CADrinkAnimType() == DAT_cupcombat) {
					drinksp = CADrinkSpeed();
					MountItemForAnimation('Cup_01', 1.5 / drinksp);
					stop = 'work_stand_drink_02'; stopSpeed = drinksp;
					GetWitcherPlayer().AddTimer(parent.completeAnims.drinkMode, 1.0 / drinksp);
				} else {
					drinksp = CADrinkSpeed() * 2.0;
					stop = 'geralt_determined_gesture_drink'; stopSpeed = drinksp;
					GetWitcherPlayer().AddTimer(parent.completeAnims.drinkMode, 3.0 / drinksp);
				}
				break;
			case CAT_eat:
				start = '';
				loop = '';
				if (CAEatAnimType() == EAT_short || CAEatAnimType() == EAT_shortcombat) {
					eatsp = CAEatSpeed();
					stop = 'work_stand_eat_01'; stopSpeed = eatsp;
					GetWitcherPlayer().AddTimer('CAConsume', 1.2 / eatsp );
				} else {					
					eatsp = CAEatSpeed() * 1.2;
					stop = 'work_stand_eat_02'; stopSpeed = eatsp;
					GetWitcherPlayer().AddTimer('CAConsume', 3.0 / eatsp );
				}
				break;
			case CAT_oil:
				oilsp = CAOilSpeed() * 0.4;
				start = '';
				loop = '';
				stop = 'man_work_sword_sharpening_02'; stopSpeed = oilsp ;
				GetWitcherPlayer().AddTimer('CAApplyOil', 2 / oilsp );
				break;
			case CAT_deadbodyloot:
				if (CALootAnimType() == LAT_all || CALootAnimType() == LAT_noherb) {
					dblootsp = CADBLootStartSpeed() * 1.35;
					start = 'work_kneeling_start'; startSpeed = dblootsp;
					loop = 'work_kneeling_loop'; loopSpeed = dblootsp ;
					stop = ''; stopSpeed = dblootsp;
					parent.completeAnims.isLoop = true;
					GetWitcherPlayer().AddTimer('CAContainerProcessLoot', 1.2 / dblootsp);
				} else {					
					dblootsp = CADBLootStartSpeed() * 1.35;
					start = 'work_kneeling_start'; startSpeed = dblootsp;
					loop = 'work_kneeling_loop'; loopSpeed = 1000.0 ;
					stop = 'work_kneeling_end'; stopSpeed = CADBLootStartSpeed() * 1.35;
					parent.completeAnims.isLoop = true;
					GetWitcherPlayer().AddTimer('CAContainerProcessLoot', 2.0 / dblootsp);
				}
				break;
			case CAT_loot:
				if (CALootAnimType() == LAT_all || CALootAnimType() == LAT_noherb) {
					lootsp = CALootStartSpeed() * 1.2;
					start = 'man_work_picking_up_herbs_start'; startSpeed = lootsp;
					loop = 'man_work_picking_up_herbs_loop_01'; loopSpeed = lootsp ;
					stop = '';
					parent.completeAnims.isLoop = true;
					GetWitcherPlayer().AddTimer('CAContainerProcessLoot', 1.2 / lootsp );
				} else {						
					lootsp = CALootStartSpeed() * 1.2;
					start = 'man_work_picking_up_herbs_start'; startSpeed = lootsp;
					loop = 'man_work_picking_up_herbs_loop_03'; loopSpeed = 1000.0 ;
					stop = 'man_work_picking_up_herbs_stop'; stopSpeed = CALootStartSpeed() * 1.4;
					parent.completeAnims.isLoop = true;
					GetWitcherPlayer().AddTimer('CAContainerProcessLoot', 2.5 / lootsp );
				}
				break;
			case CAT_grindstone:
				if (CAGrindstoneAnimType() == GWAT_default) {
					grindstonesp = CAGrindstoneSpeed();
					start = '';
					loop = '';
					stop = 'man_work_sword_sharpening_06'; stopSpeed = grindstonesp;
					GetWitcherPlayer().AddTimer('CARepairBuffWeapon', 6.5 / grindstonesp);				
				} else {
					grindstonesp = CAGrindstoneSpeed() * 0.6;
					start = 'man_work_chauffer_start'; startSpeed = grindstonesp / 0.6;
					loop = 'man_work_chauffer_01'; loopSpeed = grindstonesp;
					stop = 'man_work_chauffer_stop'; stopSpeed = grindstonesp / 0.6;
					GetWitcherPlayer().AddTimer('CARepairBuffWeapon', 6.5 / grindstonesp);
				}
				break;
			case CAT_workbench:
				if (CAWorkbenchAnimType() == GWAT_default) {				
					workbenchsp = CAWorkbenchSpeed();
					start = '';
					loop = '';
					stop = 'man_standing_adjusting_and_cleaning_clothes_loop_1'; stopSpeed = workbenchsp;
					GetWitcherPlayer().AddTimer('CARepairBuffArmor', 9.5 / workbenchsp);
					parent.AddTimer('CADelayedInterrupt', 12.0 / workbenchsp );
				} else {
					workbenchsp = CAWorkbenchSpeed() * 1.2;
					MountItemForAnimation('armor_01', 30.0 / workbenchsp );
					MountSecondItemForAnimation('Hammer', 30.0 / workbenchsp );
					start = 'man_work_standing_armorer_fixing_start'; startSpeed = workbenchsp;
					loop = 'man_work_standing_armorer_fixing_loop_02'; loopSpeed = workbenchsp;
					stop = 'man_work_standing_armorer_fixing_stop'; stopSpeed = workbenchsp;
					GetWitcherPlayer().AddTimer('CARepairBuffArmor', 30.0 / workbenchsp);
				}
				break;
			default:
				break;
		}
	}
	
	function MountItemForAnimation( item : name,  speed : float ) {
		parent.completeAnims.hornItem = item;
		parent.inv.AddAnItem( parent.completeAnims.hornItem, 1, true, true);
		parent.inv.MountItem( parent.inv.GetItemId( parent.completeAnims.hornItem ), true );
		parent.AddTimer( 'CARemoveHornItem', speed, false );
	}
	
	function MountSecondItemForAnimation( item : name,  speed : float ) {
		parent.completeAnims.secondHornItem = item;
		parent.inv.AddAnItem( parent.completeAnims.secondHornItem, 1, true, true );
		parent.inv.MountItem( parent.inv.GetItemId( parent.completeAnims.secondHornItem ), true );
		parent.AddTimer( 'CARemoveSecondHornItem', speed, false );
	}
}

state CAInterruption in CR4Player
{
	var speedMultID : int;
	var hitInterrupt : bool;
	
	event OnEnterState( prevStateName : name )
	{
		hitInterrupt = parent.completeAnims.onHitInterrupt;
		parent.completeAnims.onHitInterrupt = false;
		parent.completeAnims.isLoop = false;
		super.OnEnterState(prevStateName);
		CARemoveAllTimers();
		CAInterruptAnimation();
	}
	
	event OnLeaveState( nextStateName : name )
	{
		super.OnLeaveState(nextStateName);
	}
	
	entry function CAInterruptAnimation() {
		parent.ActionPlaySlotAnimation('PLAYER_SLOT', '');
		if (!hitInterrupt) {
			speedMultID = parent.SetAnimationSpeedMultiplier(0.33, speedMultID);
			Sleep(0.66);
		}
		parent.ResetAnimationSpeedMultiplier(speedMultID);
		
		RemoveBuggedHeldItems();
		
		parent.GotoState(parent.completeAnims.prevState);
	}
	
	function CARemoveAllTimers() {
		GetWitcherPlayer().RemoveTimer('CAConsume' );
		GetWitcherPlayer().RemoveTimer('CADrinkPotion');
		GetWitcherPlayer().RemoveTimer('CADrinkPotionInv');
		GetWitcherPlayer().RemoveTimer('CAApplyOil');
		GetWitcherPlayer().RemoveTimer('CAContainerProcessLoot');
		GetWitcherPlayer().RemoveTimer('CARepairBuffWeapon');
		GetWitcherPlayer().RemoveTimer('CARepairBuffArmor');
		parent.AddTimer( 'CARemoveHornItem', 0, false );
		parent.AddTimer( 'CARemoveSecondHornItem', 0, false );
	}
	
	
	function RemoveBuggedHeldItems() {
		var names : array < name >;
		var heldItem : SItemUniqueId;
	
		parent.inv.GetAllHeldItemsNames( names );
		
		heldItem = parent.inv.GetItemId( names[0] );
		if ( parent.inv.GetItemCategory( heldItem ) == 'work' || parent.inv.GetItemCategory( heldItem ) == 'work_secondary' ) {
			parent.inv.UnmountItem( heldItem );
			parent.inv.RemoveItem( heldItem, parent.inv.GetItemQuantity( heldItem ));
		}
				
		heldItem = parent.inv.GetItemId( names[1] );
		if ( parent.inv.GetItemCategory( heldItem ) == 'work' || parent.inv.GetItemCategory( heldItem ) == 'work_secondary' ) {
			parent.inv.UnmountItem( heldItem );
			parent.inv.RemoveItem( heldItem, parent.inv.GetItemQuantity( heldItem ));
		}
		
	}
}