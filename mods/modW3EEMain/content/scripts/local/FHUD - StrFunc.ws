/*************************************************************

Additional string functions
Author: wghost81 aka Wasteland Ghost

*************************************************************/

function EatWhite( str : string ) : string
{
	var res : string;
	res = StrReplaceAll( str, " ", "" );
	res = StrReplaceAll( res, "\t", "" );
	res = StrReplaceAll( res, "\n", "" );
	res = StrReplaceAll( res, "\r", "" );
	res = StrReplaceAll( res, "\v", "" );
	res = StrReplaceAll( res, "\f", "" );
	return res;
}

function RestoreSpaces( str : string ) : string
{
	return StrReplaceAll( str, "_", " " );
}

function StrToArrStr( str, div : string ) : array< string >
{
	var ret : array< string >;
	var item, res, left, right : string;
	var spl : bool;
	spl = true;
	res = str;
	while( spl )
	{
		spl = StrSplitFirst( res, div, left, right );
		if ( spl )
		{
			item = RestoreSpaces( EatWhite( left ) );
			res = right;
		}
		else
		{
			item = RestoreSpaces( EatWhite( res ) );
		}
		ret.PushBack( item );
	}
	return ret;
}
