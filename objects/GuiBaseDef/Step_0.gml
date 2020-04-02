if (GameCamera != -1)
{
	self.x = GameCamera.PosX - ((GameCamera.CameraZoomLevel * GameCamera.CameraBaseWidth) / 2);
	self.y = GameCamera.PosY - ((GameCamera.CameraZoomLevel * GameCamera.CameraBaseHeight) / 2);
	self.image_xscale = 3 * GameCamera.CameraZoomLevel;
	self.image_yscale = 3 * GameCamera.CameraZoomLevel;
}