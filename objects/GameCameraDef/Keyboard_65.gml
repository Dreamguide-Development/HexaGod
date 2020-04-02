if (!global.isRightMouseBtnDown && (keyboard_check(ord("S")) ^^ keyboard_check(ord("W"))))
{
	xTo -= CameraAngularSpeed;	
}
else if (!global.isRightMouseBtnDown)
{
	xTo -= CameraBaseSpeed;	
}
