CameraZoomToLevel += 0.1;
if (CameraZoomToLevel > CameraZoomMaxLevel) CameraZoomToLevel = CameraZoomMaxLevel;
if (!audio_is_playing(zoomSound))
{
	zoomSound = audio_play_sound(camera_zoomin, 5, false);
	audio_sound_gain(zoomSound, 0.3, 0);
}