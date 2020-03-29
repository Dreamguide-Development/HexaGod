if(global.ShaderX == PositionX && global.ShaderY == PositionY)
{
	if(isRed == true)
	{
		shader_set(shRed);
		draw_self();
		shader_reset();
	}
	
	if(isGreen == true)
	{
		shader_set(shGreen);
		draw_self();
		shader_reset();
	}
	
}
else
{
	draw_self();
}
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self))
{
	shader_set(shRed);
	draw_self();
	shader_reset();
	global.ShaderX = PositionX;
	global.ShaderY = PositionY;
	isGreen = false;
	isRed = true;
}
if(mouse_check_button_pressed(mb_right) && position_meeting(mouse_x, mouse_y, self))
{
	shader_set(shGreen);
	draw_self();
	shader_reset();
	global.ShaderX = PositionX;
	global.ShaderY = PositionY;
	isRed = false;
	isGreen = true;
}

