if (!global.isRightMouseBtnDown && !global.game.isGameViewBlocked && (keyboard_check(ord("A")) ^^ keyboard_check(ord("D"))))
{
	yTo += CameraAngularSpeed;	
}
else if (!global.isRightMouseBtnDown && !global.game.isGameViewBlocked)
{
	yTo += CameraBaseSpeed;	
}
