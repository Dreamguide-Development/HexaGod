randomPlaySound = round(random_range(0, 99));

if (!position_meeting(mouse_x, mouse_y, GuiBaseDef) && !audio_is_playing(clickSound) && randomPlaySound >= 90)
{
	switch (BiomeId){
		case 1:
			clickSound = audio_play_sound(desert_0, 10, false);
		break;
		case 2:
			clickSound = audio_play_sound(forest_0, 10, false);
		break;
	}
	audio_sound_gain(clickSound, 0.1, 0);
}