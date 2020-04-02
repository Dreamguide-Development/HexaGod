/* global variables */
global.ShaderX  = -1;
global.ShaderY = -1;
global.isRightMouseBtnDown = false;
global.game = self; //temporary
/* game initalization */
/* game map initialization */
var MapLayerId = layer_get_id("MapLayer");
var GameMap = instance_create_layer(0, 0, MapLayerId, GameMapDef);
/* game camera initialization */
var GameCam = instance_create_layer(0, 0, MapLayerId, GameCameraDef);
with (GameCam)
{
	PosX = 2628;
	PosY = 2628;
	xTo = 2628;
	yTo = 2628;	
}
/* GUI initialization */
var UiLayerId = layer_get_id("UiLayer");
var GuiBase = instance_create_layer(2628, 2628, UiLayerId, GuiBaseDef);
with (GuiBase)
{
	GameCamera = GameCam;
}
/* music & sfx init/management */
var music_background = audio_play_sound(wind_ambient, 0, true);
var music = audio_play_sound(piano_ambient, 1, true);
audio_sound_gain(music_background, 0.5, 0);
audio_sound_gain(music, 0.4, 0);