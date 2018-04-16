function fastTravelIsBlocked(location_to : name) : bool
{
	var location_from : name = thePlayer.getLastUsedSignpost();
	
	/* Novigrad docks <-> Skellige */
	if (location_from == 'novigrad_piers' && location_to == 'craite_harbor') return false;
	if (location_from == 'craite_harbor' && location_to == 'novigrad_piers') return false;
 
	/* Vyzima <-> Novigrad nilf big camp on south */
	if (location_from == 'Vyzima castle entrance' && location_to == 'novigrad_garrison') return false;
	if (location_from == 'novigrad_garrison' && location_to == 'Vyzima castle entrance') return false;
 
	/* Vyzima <-> White orchard woesong bridge */
	if (location_from == 'Vyzima castle entrance' && location_to == 'woesong_bridge') return false;
	if (location_from == 'woesong_bridge' && location_to == 'Vyzima castle entrance') return false;
 
	/* Novigrad nilf big camp on south <-> White orchard woesong bridge	*/
	if (location_from == 'novigrad_garrison' && location_to == 'woesong_bridge') return false;
	if (location_from == 'woesong_bridge' && location_to == 'novigrad_garrison') return false;
 
	/* Brunwich (HS) <-> Kaer Morhen */
	if (location_from == 'ep1_wedding_village' && location_to == 'kaer_morhen_entrance') return false;
	if (location_from == 'kaer_morhen_entrance' && location_to == 'ep1_wedding_village') return false;
 
	/* White orchard cackler bridge <-> Kaer Morhen */
	if (location_from == 'bridge_gate' && location_to == 'kaer_morhen_entrance') return false;
	if (location_from == 'kaer_morhen_entrance' && location_to == 'bridge_gate') return false;
	
	/* Hangman tree <-> Kaer Morhen */
	if (location_from == 'nml_hangman_tree' && location_to == 'kaer_morhen_entrance') return false;
	if (location_from == 'kaer_morhen_entrance' && location_to == 'nml_hangman_tree') return false;
 
	/* Vyzima -> Hangman tree */
	if (location_from == 'Vyzima castle entrance' && location_to == 'nml_hangman_tree') return false;
	
	/* Toussaint Plegmund's Bridge <-> Vyzima */
	if (location_from == 'vermentino_vineyard_ft' && location_to == 'Vyzima castle entrance') return false;
	if (location_from == 'Vyzima castle entrance' && location_to == 'vermentino_vineyard_ft') return false;
	
	/* Toussaint Plegmund's Bridge <-> Novigrad nilf big camp on south */
	if (location_from == 'vermentino_vineyard_ft' && location_to == 'novigrad_garrison') return false;
	if (location_from == 'novigrad_garrison' && location_to == 'vermentino_vineyard_ft') return false;
	
	return true;
};