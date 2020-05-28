var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
alertBtn = global.game.GuiAlertBtn;

if (point_in_rectangle(mouseX, mouseY, 0, 0, 852, 77) || // top-left part of UI
	point_in_rectangle(mouseX, mouseY, 852, 0, 1280, 720) // right part of UI
) 
{
	return true;
}
else if (!alertBtn.isHidden && point_in_circle(mouseX, mouseY, alertBtn.imagePosMiddleX, alertBtn.imagePosMiddleY, alertBtn.radius))
{
	return true;	
}
else
{
	return false;
}

