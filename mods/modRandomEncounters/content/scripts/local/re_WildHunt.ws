//--- RandomEncounters ---
// Made by Erxv
// http://www.nexusmods.com/witcher3/mods/785?
class CRandomEncounterWildHuntNPC extends CEntity{
	
	private var wildhuntArray : array<CEntity>;
	
	event OnSpawned( spawnData : SEntitySpawnData ){
		super.OnSpawned(spawnData);
		
		AddTimer('Check', 2, true);
	}
	
	public function SetArray(arr : array<CEntity>){
		this.wildhuntArray = arr;
	}
	
	timer function Check ( optional dt : float, optional id : Int32 )	{
		var aliveCount, i : int;
		var dist : float;
		var playerPos, pos : Vector;
		
		aliveCount = wildhuntArray.Size();
		playerPos = thePlayer.GetWorldPosition();
		
		
		for(i = 0; i < wildhuntArray.Size();i+=1)
		{
			if( !((CActor)wildhuntArray[i]).IsAlive() ){
				aliveCount-=1;
			}else{
				pos = wildhuntArray[i].GetWorldPosition();
				dist = VecDistance(pos,playerPos); 
						
				if(dist > 30 && dist < 100 ){
					((CNewNPC)wildhuntArray[i]).NoticeActor(thePlayer);
				}else if (dist > 100){
					((CActor)wildhuntArray[i]).Kill('RandomEncounters', true);
					wildhuntArray[i].Destroy();
				}
			}
		}	

		if(aliveCount < 1){
			RemoveTimer('Check');
			for(i=0;i<this.portals.Size();i+=1)
			{
				this.portals[i].Destroy();
			}
			RequestWeatherChangeTo('WT_Clear',30,false);
			this.Destroy();
		}
	}
	
	
	
	
	private var portals : array<CEntity>;
	
	public function OnSetPortals( portals : array<CEntity> ){
		this.portals = portals;
	}
	timer function PortalEffect ( optional dt : float, optional id : Int32 ){	
		var i : int;
		
		for(i=0;i<this.portals.Size();i+=1)
		{
			this.portals[i].PlayEffect('rift_activate');
		}
		AddTimer('ClosePortals',5,false);
	}
	timer function ClosePortals ( optional dt : float, optional id : Int32 ){
		var i : int;
		
		for(i=0;i<this.portals.Size();i+=1)
		{
			this.portals[i].StopEffect('rift_activate');
		}
		AddTimer('DestroyPortals',2,false);
	}
	timer function DestroyPortals ( optional dt : float, optional id : Int32 ){
		var i : int;
		
		for(i=0;i<this.portals.Size();i+=1)
		{
			this.portals[i].Destroy();
		}
		this.portals.Clear();
	}		
	timer function NormalWeather ( optional dt : float, optional id : Int32 ){	
		RequestWeatherChangeTo('WT_Clear',30,false);
	}
	timer function BattleCry ( optional dt : float, optional id : Int32 ){	
		thePlayer.PlayVoiceset( 90, "BattleCryBadSituation" );
	}
}