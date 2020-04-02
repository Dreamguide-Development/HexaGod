CameraZoomToLevel -= 0.1;
if (CameraZoomToLevel < CameraZoomMinLevel) CameraZoomToLevel = CameraZoomMinLevel;
if (!audio_is_playing(zoomSound))
{
	zoomSound = audio_play_sound(camera_zoomout, 5, false);
	audio_sound_gain(zoomSound, 0.3, 0);
}