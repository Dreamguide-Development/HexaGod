/* camera variables initialization */
/* constant variables */
CameraZoomMinLevel = 0.5;
CameraZoomMaxLevel = 2;
CameraBaseWidth = 3840;
CameraBaseHeight = 2160;
CameraBaseSpeed = 15;
CameraAngularSpeed = CameraBaseSpeed / sqrt(2);
UiHeightOffset = 120;
UiWidthOffset = 650;
/* dynamic variables */
camera = camera_create();
PosX = 0;
PosY = 0;
xTo = PosX;
yTo = PosY;
CameraZoomLevel = 1;
LastCameraZoomLevel = 1;
CameraZoomToLevel = CameraZoomLevel;
xScrollStart = 0;
yScrollStart = 0;
isClickedOnMap = false;

var vm = matrix_build_lookat(PosX, PosY, -10, PosX, PosY, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(CameraBaseWidth, CameraBaseHeight, 1, 10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;


