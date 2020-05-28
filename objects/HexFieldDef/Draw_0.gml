if(global.ShaderX == PositionX && global.ShaderY == PositionY)
{
	if(isRed == true)
	{
		shader_set(shRed);
		draw_self();
		shader_reset();
	}
}
else
{
	draw_self();
}
