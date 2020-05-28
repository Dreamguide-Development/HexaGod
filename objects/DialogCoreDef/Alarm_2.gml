if (alpha > 0)
{
	alpha -= 0.05;
	if (alpha <= 0) 
	{
		game = global.game;
		alpha = 0;
		isHidden = true;
		isCutsceneActive = false;	
		game.isGameViewBlocked = false;
		audio_sound_gain(game.music, 0.4, 2 * room_speed * 10);
		audio_sound_gain(game.musicDialogue, 0.0, 2 * room_speed * 10);
	}
	alarm[2] = 2;
}	