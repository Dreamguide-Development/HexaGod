if (!global.game.isGameViewBlocked)
{
	CameraZoomToLevel += 0.1;

	if (CameraZoomToLevel > CameraZoomMaxLevel)
	{
		CameraZoomToLevel = CameraZoomMaxLevel;
	}
	else
	{
		xTo += 65;
		yTo -= 12;	
	}
}