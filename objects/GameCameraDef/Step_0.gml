PosX += (xTo - PosX)/30;
PosY += (yTo - PosY)/30;
LastCameraZoomLevel = CameraZoomLevel;
CameraZoomLevel += (CameraZoomToLevel - CameraZoomLevel)/30;
if (audio_is_playing(zoomSound)) 
{
	zoomSoundCounter++;
	if (abs(LastCameraZoomLevel - CameraZoomLevel) <= 0.1 && zoomSoundCounter >= 60 && !isZoomSoundFading)
	{
		isZoomSoundFading = true;
		audio_sound_gain(zoomSound, 0, 2);
	}
	else if (CameraZoomLevel == LastCameraZoomLevel)
	{
		isZoomSoundFading = false;
		zoomSoundCounter = 0;
		audio_stop_sound(zoomSound);
	}
}

var vm = matrix_build_lookat(PosX,PosY,-10,PosX,PosY,0,0,1,0);
var pm = matrix_build_projection_ortho(CameraZoomLevel * CameraBaseWidth, CameraZoomLevel * CameraBaseHeight, 1, 10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);