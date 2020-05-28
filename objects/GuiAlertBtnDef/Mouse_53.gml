if (!isHidden && point_in_circle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), imagePosMiddleX, imagePosMiddleY, radius))
{
	if (!audio_is_playing(clickSound)) clickSound = audio_play_sound(btn_click, 10, false);
	isHidden = true;
	global.game.isGameViewBlocked = true;
	global.game.GuiLetterPanel.isHidden = false;
	
	//temp
	global.game.GuiLetterPanel.checkboxes[0].imageIndex = 0;
	global.game.GuiLetterPanel.checkboxes[1].imageIndex = 0;
	global.game.GuiLetterPanel.checkboxes[2].imageIndex = 0;
}