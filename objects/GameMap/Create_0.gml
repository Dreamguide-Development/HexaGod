var Height = 11;
var Width = 11;
var MapXCenter = 2500;
var MapYCenter = 2500;
var HexFields = array_create(Height * Width);
var MapLayerId = layer_get_id("MapLayer");
var HexFieldWidth = sprite_get_width(HexField_spr);
var HexFieldHeigh = sprite_get_height(HexField_spr);
//Math optimalization
var SpaceOffset = 128/sqrt(5);

for(x = 0; x < Width; x++)
{
	for(y = 0; y < Height; y++)
	{
		var XDrawPos = MapXCenter + ((x - floor(Width/2)) * (SpaceOffset + 128));
		var YDrawPos = (x % 2 == 0) ? MapYCenter + ((y - floor(Height/2)) * 255) : 
		MapYCenter + ((y - floor(Height/2)) * 255) + 128;
		HexFields[x,y] = instance_create_layer(XDrawPos, YDrawPos, MapLayerId, HexField);
		HexFields[x,y].PositionX = x;
		HexFields[x,y].PositionY = y;
	}	
}




