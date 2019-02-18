/*************************************************************

Additional input functions
Author: wghost81 aka Wasteland Ghost

*************************************************************/

function ActionsHaveConflict( action1 : name, action2 : name ) : bool
{
	var keys1, keys2 : array< EInputKey >;
	var i : int;
	
	theInput.GetCurrentKeysForAction( action1, keys1 );
	theInput.GetCurrentKeysForAction( action2, keys2 );
	for( i = 0; i < keys1.Size(); i += 1 )
	{
		if( keys2.Contains( keys1[i] ) )
		{
			return true;
		}
	}
	return false;
}