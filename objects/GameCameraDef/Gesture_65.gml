if (position_meeting(mouse_x, mouse_y, HexFieldDef) && !position_meeting(mouse_x, mouse_y, GuiBaseDef))
{
	hex = instance_position(mouse_x, mouse_y, HexFieldDef);
	xTo = hex.x + hex.sprite_width / 2;
	yTo = hex.y + hex.sprite_height / 2;

	moveSound = audio_play_sound(camera_move, 5, false);
	audio_sound_gain(moveSound, 0.3, 0);
}