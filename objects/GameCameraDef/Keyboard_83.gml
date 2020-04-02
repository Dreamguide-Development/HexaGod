if (!global.isRightMouseBtnDown && (keyboard_check(ord("A")) ^^ keyboard_check(ord("D"))))
{
	yTo += CameraAngularSpeed;	
}
else if (!global.isRightMouseBtnDown)
{
	yTo += CameraBaseSpeed;	
}
