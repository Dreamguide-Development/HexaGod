/*camera initialization*/
camera = camera_create();
var PosX = 2404;
var PosY = 1932;
CameraZoomLevel = 1;
CameraZoomToLevel = 1;
CameraZoomMinLevel = 0.5;
CameraZoomMaxLevel = 2;
CameraBaseWidth = 2048;
CameraBaseHeight = 1536;

var vm = matrix_build_lookat(PosX,PosY,-10,PosX,PosY,0,0,1,0);
var pm = matrix_build_projection_ortho(2048,1536,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

global.xTo = PosX;
global.yTo = PosY;
global.xScrollStart = 0;
global.yScrollStart = 0;