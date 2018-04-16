class CVolumetricCloudsMod extends CEntityMod {
    default modName = 'VolumetricClouds';
    default modAuthor = "GMSBSGhost";
    default modUrl = "http://www.nexusmods.com/witcher3/mods/1302/?";
    default modVersion = '1.31';

    default logLevel = MLOG_DEBUG;

    // define template for entity to be spawned on startup. entity must be added
    // in DLC and use CModExampleTimerEntity as class (don't forget flat compiled
    // data!).
    // just copy this stripped down entity into *your* dlc directory:
    //      dlc/modtemplates/<yourmodname>/<yourmodentityname>
    // and change its class to <yourmodclass>
    // Note: no reddlc for mounting required as dlc/modtemplates/* and subdirs is
    // already defined in bootstrap reddlc!
    default template = "dlc/modtemplates/volumetric_clouds_bootstrap/cloudentity.w2ent";

    // no need for init function as the entity from above function will be spawned automatically
}

class CVolumetricClouds extends CEntity{



	// Array to hold all spawned clouds
	var cloudArray : array<CEntity>;
	
	var cameraPos : Vector;
	var cameraRot : EulerAngles;
	
	
	event OnSpawned(spawnData: SEntitySpawnData) {
        super.OnSpawned(spawnData);

        //GetWitcherPlayer().DisplayHudMessage("Example Entity Mod spawned");
        //AddTimer('InitVolumetricClouds', 3, true, , , , true);
		AddTimer('InitVolumetricClouds', 3.0, false);
    }
	
	// Volumetric Clouds over Skellige
	timer function InitVolumetricClouds(dt : float, id : int) {
		
		//GetWitcherPlayer().DisplayHudMessage("Timer Entity callback called ");
		this.activateFX();

	}
	// Volumetric Clouds over Skellige
	

	function activateFX(){
	
		var l_currentArea  : EAreaName;	
		//theGame.GetGuiManager().ShowNotification("Starting activateFX");
	
		l_currentArea = theGame.GetCommonMapManager().GetCurrentArea();		
	    if( l_currentArea ==  AN_Skellige_ArdSkellig){
				spawnClouds();
		}else{
			//theGame.GetGuiManager().ShowNotification("You are not in Skellige :D");
		}

		

	}


function spawnClouds() {
	var rot : EulerAngles;
	var effectName : CName;
	
	var template : CEntityTemplate;
	var cloudEnt : CEntity;
	
	
	var cloudRotationArray : array<EulerAngles>; // Array holding the rotation of volumetric clouds (direction in which they spawn)
	var cloudLocationArray : array<Vector>; // Array holding the locations of volumetric clouds
	var cloudTypeArray : array<CName>; // Array holding the type of cloud to be used for each cloud
	var sizeCloudArray,idx : int;
	
	
	rot.Pitch = 350;
	rot.Yaw = 260;
	rot.Roll = 0;

	
	template = (CEntityTemplate)LoadResource("fx\monsters\fogling\fogling_fog.w2ent", true);
	

	// EulerAngles(Pitch, Yaw, Roll);
	
	////////////////////////////////////////// Cloud definition start //////////////////////////////////////////////
	
	// Ard Skellig
	//cloudLocationArray.PushBack(Vector(-218,492,40)); // Hill near Kaer Trolde
	//cloudRotationArray.PushBack(rot);
	
	cloudLocationArray.PushBack(Vector(-120,745,120)); // Kaer Trolde bridge waypoint, Z=70: below the bridge, Z=110: above the bridge
	cloudRotationArray.PushBack(EulerAngles(360,290,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-64,-690,255)); // Mountain peak close to Kaer Muire (northern Side) 
	cloudRotationArray.PushBack(rot);
	cloudTypeArray.PushBack('cloudsUp');
	
	
	cloudLocationArray.PushBack(Vector(-190,-814,240)); // Mountain side facing Undvik northwest of Kaer Muire 
	cloudRotationArray.PushBack(EulerAngles(360,280,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(-312,660,110)); // Western mountain peak close to Kaer Trolde Bridge (southern Side)
	cloudRotationArray.PushBack(EulerAngles(350,80,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(-297,988,214)); // Western mountain peak close to Kaer Trolde Bridge (northwestern Side near summit)
	cloudRotationArray.PushBack(EulerAngles(350,360,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(-359,790,102)); // West coast mountain front northwest of Kaer Trolde 
	cloudRotationArray.PushBack(EulerAngles(350,90,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(22,886,153)); // Northern coast mountain front northeastern peak of Kaer Trolde bridge
	cloudRotationArray.PushBack(EulerAngles(350,15,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(159,890,72)); // Northern coast mountain front mid high above ancient crypt
	cloudRotationArray.PushBack(EulerAngles(350,15,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(647,834,135)); // Northern coast mountain front east of the mountain top near ancient crypt
	cloudRotationArray.PushBack(EulerAngles(360,10,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(800,632,138)); // Eastern mountain front near Kaer Gelen
	cloudRotationArray.PushBack(EulerAngles(360,340,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(1327,245,84)); // East coast outlook east of Gedyneith
	cloudRotationArray.PushBack(EulerAngles(360,293,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	//cloudLocationArray.PushBack(Vector(1186,-409,43)); // East coast southeastern mountain low
	cloudLocationArray.PushBack(Vector(1141,-400,80));
	cloudRotationArray.PushBack(EulerAngles(48,230,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(1148,-467,109)); // East coast southeastern mountain higher up
	cloudRotationArray.PushBack(EulerAngles(48,230,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(1139,-494,160)); // East coast southeastern mountain top
	cloudRotationArray.PushBack(EulerAngles(360,280,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(1019,-702,149)); // South coast southeastern mountain south side close to cave entrance
	cloudRotationArray.PushBack(EulerAngles(360,280,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(1158,-631,110)); // South coast southeastern mountain midway up above Grotto east
	cloudRotationArray.PushBack(EulerAngles(360,280,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(876,-752,102)); // South coast southeastern mountain midway up above Grotto west
	cloudRotationArray.PushBack(EulerAngles(360,280,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(1195,104,76)); // East coast eastern mountain front southeast of Gedyneith and northeast of druids' camp
	cloudRotationArray.PushBack(EulerAngles(270,280,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-222,622,50)); // Western mountain close to Kaer Trolde Bridge (lower part)
	cloudRotationArray.PushBack(EulerAngles(320,280,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(87,511,100)); // Mountain front east of Kaer Trolde harbor
	//cloudRotationArray.PushBack(EulerAngles(350,290,0)); 
	cloudRotationArray.PushBack(EulerAngles(350,260,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	//////////////////////////////////////////////////////////////////// Testing distant clouds start /////////////////////////////////////////////////////////////////////////////////
	
	cloudLocationArray.PushBack(Vector(-312,409,270)); // Western mountain peak close to Kaer Trolde Bridge (southern Side)
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('cloudsHuge');
	
	//////////////////////////////////////////////////////////////////// Testing distant clouds end /////////////////////////////////////////////////////////////////////////////////
	
	cloudLocationArray.PushBack(Vector(426,802,170)); // Mountain top east of ancient crypt
	cloudRotationArray.PushBack(EulerAngles(360,360,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(70,-627,130)); // Mountains west of Fyresdal (low)
	cloudRotationArray.PushBack(EulerAngles(330,325,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(151,-627,85)); // Mountains west of Fyresdal (low, bit further north)
	cloudRotationArray.PushBack(EulerAngles(360,315,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(243,-616,85)); // Mountains west of Fyresdal (low, bit further north2)
	cloudRotationArray.PushBack(EulerAngles(360,325,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(190,-930,130)); // Mountains southwest of Fyresdal (low)
	cloudRotationArray.PushBack(EulerAngles(360,280,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(122,-879,160)); // Mountains west of Fyresdal (high)
	cloudRotationArray.PushBack(EulerAngles(360,280,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(24,-773,241)); // Mountains west of Fyresdal (peak)
	cloudRotationArray.PushBack(EulerAngles(360,280,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(1053,-526,177)); // Mountain peak east of Fyresdal (high)
	cloudRotationArray.PushBack(EulerAngles(360,280,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(913,-676,181)); // Mountain peak east of Fyresdal (high, western peak)
	cloudRotationArray.PushBack(EulerAngles(360,280,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(871,-585,151)); // Mountain peak east of Fyresdal (lower on western side)
	cloudRotationArray.PushBack(EulerAngles(280,175,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(453,-124,98)); // Mountains east of Boxholm, western side
	cloudRotationArray.PushBack(EulerAngles(360,245,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(497,-124,98)); // Mountains east of Boxholm, eastern side
	cloudRotationArray.PushBack(EulerAngles(360,245,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	// Undvik
	
	//////////////////////// ice fog ////////////////////////////
	//cloudLocationArray.PushBack(Vector(-1361,-48,1.67)); // 1. Most eastern rock wall near eastern coast of Undvik, northern part
	cloudLocationArray.PushBack(Vector(-1361,-48,1.5));
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	cloudLocationArray.PushBack(Vector(-1386,37,1.5)); // 2. Most eastern rock wall near eastern coast of Undvik, southern part
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	cloudLocationArray.PushBack(Vector(-1528,-149,1.5)); // 3. Big rock wall west of 1., southern end
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	cloudLocationArray.PushBack(Vector(-1574,-79,1.5)); // 4. Big rock wall west of 1., northern end
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	cloudLocationArray.PushBack(Vector(-1760,-201,1.5)); // 5. Small rock north of northern harbor
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	cloudLocationArray.PushBack(Vector(-1561,-291,1.5)); // 6. Small island with shipwreck east of northern harbor
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	cloudLocationArray.PushBack(Vector(-1863,43,1.5)); // 7. Northern most bigger rock, northeast of Undvik tower
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	cloudLocationArray.PushBack(Vector(-1665,-311,1.5)); // 8. Rock directly east of northern harbor
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	cloudLocationArray.PushBack(Vector(-1653,-364,1.5)); // 9. Small rock southeast of northern harbor
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	cloudLocationArray.PushBack(Vector(-1354,-414,1.5)); // 10. Eastern most bigger island with two shipwrecks -> southeastern end
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	cloudLocationArray.PushBack(Vector(-1408,-286,1.5)); // 11. Eastern most bigger island with two shipwrecks -> northern end
	cloudRotationArray.PushBack(EulerAngles(0,0,0));
	cloudTypeArray.PushBack('iceFog');
	
	//////////////////////// ice fog ////////////////////////////
	
	cloudLocationArray.PushBack(Vector(-1950,-916,95)); // Mountain west low
	cloudRotationArray.PushBack(rot);
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-1619,-907,158)); // Mountain east low
	cloudRotationArray.PushBack(EulerAngles(360,175,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-1508,-1058,135)); // Mountain eastern front facing Kaer Muire
	cloudRotationArray.PushBack(rot);
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(-1561,-980,192)); // Mountain eastern front facing Kaer Muire higher
	cloudRotationArray.PushBack(rot);
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(-1738,-1023,210)); // Mountain center high
	cloudRotationArray.PushBack(rot);
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(-1791,-943,145)); // Mountain center low
	cloudRotationArray.PushBack(EulerAngles(360,175,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-2149,-138,110)); // Tower northwest northern side
	cloudRotationArray.PushBack(EulerAngles(360,350,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	// Spiekeroog
	cloudLocationArray.PushBack(Vector(-1698,1497,55)); // SOD mountain old house up hill
	cloudRotationArray.PushBack(EulerAngles(350,190,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-1793,1434,115)); // SOD mountain platform near top
	cloudRotationArray.PushBack(EulerAngles(340,290,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	cloudLocationArray.PushBack(Vector(-1743,1360,85)); // SOD mountain front west of Svorlag
	cloudRotationArray.PushBack(EulerAngles(285,256,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-1744,1407,55)); // SOD mountain front west of Svorlag - lower part
	cloudRotationArray.PushBack(EulerAngles(330,238,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	
	cloudLocationArray.PushBack(Vector(-1592,1499,15)); // SOD mountain foot west of small lake in northern part of Spiekeroog
	cloudRotationArray.PushBack(rot);
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-1911,1171,90)); // Mountain peak south of SOD mountain west of Old Watchtower
	cloudRotationArray.PushBack(EulerAngles(350,234,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-1751,1176,73)); // Lower mountain south of Old Watchtower
	cloudRotationArray.PushBack(EulerAngles(10,234,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-3168,1778,79)); // Background mountains west of Spiekeroog
	cloudRotationArray.PushBack(EulerAngles(360,80,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(-3228,1233,107)); // Background mountains west of Spiekeroog south top
	cloudRotationArray.PushBack(EulerAngles(360,80,0));
	cloudTypeArray.PushBack('cloudsUp');
	
	// Larvik
	cloudLocationArray.PushBack(Vector(2524,60,79)); // Mountain east of Lofoten cemetry northwestern side
	cloudRotationArray.PushBack(EulerAngles(360,320,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(2533,30,90)); // Mountain east of Lofoten cemetry southeastern peak
	cloudRotationArray.PushBack(EulerAngles(360,320,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	cloudLocationArray.PushBack(Vector(2535,1274,49)); // Small island with large shipwreck north of Larvik
	cloudRotationArray.PushBack(EulerAngles(360,16,0));
	cloudTypeArray.PushBack('cloudsTerrain');
	
	////////////////////////////////////////// Cloud definition end //////////////////////////////////////////////
	
	
	sizeCloudArray = cloudLocationArray.Size();
	//theGame.GetGuiManager().ShowNotification("Number of clouds " + sizeCloudArray + " with number of rotations " +cloudRotationArray.Size() + " and types " + cloudTypeArray.Size());
	for(idx = 0; idx < sizeCloudArray; idx+=1){
	
		cloudEnt = theGame.CreateEntity(template, cloudLocationArray[idx], cloudRotationArray[idx]);
		
		effectName=cloudTypeArray[idx];
		
		cloudEnt.PlayEffect(effectName);
		cloudArray.PushBack(cloudEnt); 
	}
	//DisplayWelcomeMessage();
}

/*function  DisplayWelcomeMessage() {
	theGame.GetGuiManager().ShowNotification("Spawned Clouds successfully :D");
}*/

}

function modCreate_VolumetricCloudsMod() : CMod {
    // do nothing besides creating and returning of mod class!
    return new CVolumetricCloudsMod in thePlayer;
}