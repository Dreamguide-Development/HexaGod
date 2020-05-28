if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),imagePosX, imagePosY, imagePosX + width, imagePosY + height) &&
parent != -1 && !parent.isHidden && isAvailable)
{
	imageIndex = 1;
	if (!audio_is_playing(clickSound)) clickSound = audio_play_sound(letter_click, 10, false);
	alarm[0] = 30;
}