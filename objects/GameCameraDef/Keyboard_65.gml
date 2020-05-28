if (!global.isRightMouseBtnDown && !global.game.isGameViewBlocked && (keyboard_check(ord("S")) ^^ keyboard_check(ord("W"))))
{
	xTo -= CameraAngularSpeed;	
}
else if (!global.isRightMouseBtnDown && !global.game.isGameViewBlocked)
{
	xTo -= CameraBaseSpeed;	
}
