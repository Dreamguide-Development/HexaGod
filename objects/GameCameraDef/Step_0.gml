PosX += (xTo - PosX)/30;
PosY += (yTo - PosY)/30;
LastCameraZoomLevel = CameraZoomLevel;
CameraZoomLevel += (CameraZoomToLevel - CameraZoomLevel)/30;

var vm = matrix_build_lookat(PosX,PosY,-10,PosX,PosY,0,0,1,0);
var pm = matrix_build_projection_ortho(CameraZoomLevel * CameraBaseWidth, CameraZoomLevel * CameraBaseHeight, 1, 10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);