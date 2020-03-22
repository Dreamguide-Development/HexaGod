PosX += (xTo - PosX)/25;
PosY += (yTo - PosY)/25;

xTo = mouse_x;
yTo = mouse_y;

var vm = matrix_build_lookat(PosX,PosY,-10,PosX,PosY,0,0,1,0);
camera_set_view_mat(camera,vm);