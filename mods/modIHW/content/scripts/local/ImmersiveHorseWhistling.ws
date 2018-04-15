/****************************************************************************/
/** Copyright © CD Projekt RED 2015
/** Author : tmentink
/****************************************************************************/

function IHW_IsActive() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('HorseWhistling', 'IHW_Active');
	}	
	
function IHW_NearCamps() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('HorseWhistling', 'IHW_Camps');
	}	
	
function IHW_NearSignPosts() : bool
	{
		return theGame.GetInGameConfigWrapper().GetVarValue('HorseWhistling', 'IHW_SignPosts');
	}	
	
function IHW_DistanceFromGeralt() : int
	{
		var id : int;
		var ret : int; 
		
		id = StringToInt(theGame.GetInGameConfigWrapper().GetVarValue('HorseWhistling', 'IHW_Geralt'));
		
		switch(id)
		{
			case 0:  { ret = 1100; break; }
			case 1:  { ret = 2000; break; }
			case 2:  { ret = 3000; break; }
			case 3:  { ret = 4000; break; }
			case 4:  { ret = 5000; break; }
			case 5:  { ret = 6000; break; }
		}
		
		return ret;
	}	
	