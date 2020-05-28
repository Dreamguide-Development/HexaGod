if (position_meeting(mouse_x, mouse_y, HexFieldDef) && !IsMouseOnUI() && !global.game.isGameViewBlocked)
{
	hex = instance_position(mouse_x, mouse_y, HexFieldDef);
	xTo = hex.x + UiWidthOffset * CameraZoomLevel + hex.sprite_width / 2;
	yTo = hex.y - UiHeightOffset  * CameraZoomLevel + hex.sprite_height / 2;
}