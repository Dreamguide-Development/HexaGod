if (!global.game.isGameViewBlocked)
{
	CameraZoomToLevel -= 0.1;

	if (CameraZoomToLevel < CameraZoomMinLevel)
	{
		CameraZoomToLevel = CameraZoomMinLevel;
	}
	else
	{
		xTo -= 65;
		yTo += 12;	
	}
}