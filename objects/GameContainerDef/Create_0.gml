/* global variables */
global.ShaderX  = -1;
global.ShaderY = -1;
global.isRightMouseBtnDown = false;
/* game initalization */
/* game map initialization */
var MapLayerId = layer_get_id("MapLayer");
var GameMap = instance_create_layer(0, 0, MapLayerId, GameMapDef);
/* game camera initialization */
var GameCam = instance_create_layer(0, 0, MapLayerId, GameCameraDef);
var CamX = 2404;
var CamY = 1932;
GameCam.PosX = CamX;
GameCam.PosY = CamY;
