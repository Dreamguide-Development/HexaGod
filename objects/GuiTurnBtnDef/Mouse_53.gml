if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), imagePosX1, imagePosY1, imagePosX2, imagePosY2) && !global.game.isGameViewBlocked)
{
	if (!audio_is_playing(clickSound)) clickSound = audio_play_sound(btn_click, 10, false);
	
	game = global.game;
	
	game.CurrentPlayerTurnIndex += 1;
	if (game.CurrentPlayerTurnIndex >= array_length_1d(game.TurnOrder))
	{
		game.CurrentPlayerTurnIndex = 0;
		game.TurnNo += 1;
	}

	global.testflag = false;

	UpdateTurnLogic(game.GuiBase, game.TurnOrder[game.CurrentPlayerTurnIndex], game.TurnNo);
}