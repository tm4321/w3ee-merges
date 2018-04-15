function GetTFRCValue(nam : name) : string
{
	var conf: CInGameConfigWrapper;
    var value: string;
    
    conf = theGame.GetInGameConfigWrapper();
    
    value = conf.GetVarValue('ThoughtfulRoach', nam);
    return value;
}
function GetTFRCParkingInterval() : int
{
	var id : int;
	var ret : int;
	
	id =(int)GetTFRCValue('ParkingOption');
	
	switch(id)
	{
		case 0: { ret = 1; break; }
		case 1: { ret = 120; break; }
		case 2: { ret = 300; break; }
		case 3: { ret = 600; break; }
		case 4: { ret = 0; break; }
		default: { ret = 0; break; }
	}

	return ret;
}
function GetTFRCInterruptParking() : bool
{
	return (bool)GetTFRCValue('InterruptParking');
}
function GetTFRCToggleFollow() : bool
{
	return (bool)GetTFRCValue('ToggleFollow');
}
function TFRCAddTailIfNeeded(horse : CActor) : bool
{
	var items : array<SItemUniqueId>;
	
	if(horse && !horse.GetInventory().HasItem('Horse apex tail'))
	{
		items = horse.GetInventory().AddAnItem('Horse apex tail');
		horse.GetInventory().MountItem(items[0]);
		return true;
	}
	return false;
}
function TFRCRemoveItem(inv : CInventoryComponent, out fixed : bool, item : name, cond : bool)
{
	if(inv.HasItem(item) && !cond)
	{
		inv.UnmountItem(inv.GetItemId(item));
		inv.RemoveItem(inv.GetItemId(item));
		fixed = fixed || true;
	}
	fixed = fixed || false;
}
function TFRCSanitizeHorse(horse : CActor)
{
	var inv : CInventoryComponent;
	var items : array<SItemUniqueId>;
	var fixed : bool;
	
	if(horse)
	{
		inv = horse.GetInventory();
		inv.GetAllItems(items);
		
		TFRCRemoveItem(inv, fixed, 'Horse Hair 1 Skellige', inv.HasItem('DLC14 Skellige HorseSaddle'));
		TFRCRemoveItem(inv, fixed, 'Horse Hair Nilfgaardian', inv.HasItem('DLC5 Nilfgaardian HorseSaddle'));
		TFRCRemoveItem(inv, fixed, 'Horse Hair 1 ep2', (inv.HasItem('Toussaint saddle 4') || inv.HasItem('Toussaint saddle 5') || inv.HasItem('Toussaint saddle 6')));
		
		TFRCRemoveItem(inv, fixed, 'Horse braided tail 1', (inv.HasItem('Toussaint saddle 2') || inv.HasItem('Toussaint saddle 3') || inv.HasItem('Toussaint saddle 5')));
		TFRCRemoveItem(inv, fixed, 'Horse braided tail 2', (inv.HasItem('Toussaint saddle') || inv.HasItem('Toussaint saddle 4') || inv.HasItem('Toussaint saddle 6')));
		
		fixed = TFRCAddTailIfNeeded(horse) || fixed;
	}

	if(fixed)
	{
		LogChannel('ThoughtfulRoach', "Detected and fixed one or more issues with horse");
		TFRCLogHorse();
	}
}
function TFRCLogHorse()
{
	var horse : CActor;
	var inv : CInventoryComponent;
	var items : array<SItemUniqueId>;
	var i, s : int;
	
	horse = GetWitcherPlayer().GetHorseWithInventory();
	if(horse)
	{
		inv = horse.GetInventory();
		inv.GetAllItems(items);
		
		s = items.Size();
		for(i = 0; i < s; i += 1)
		{
			LogChannel('ThoughtfulRoach', (i+1) + "/" + s + " : " + inv.GetItemName(items[i]));
		}
	}
}