/* global variables */
global.ShaderX  = -1;
global.ShaderY = -1;
global.isRightMouseBtnDown = false;
global.game = self; //temporary
global.testflag = false; //temporary
/* game initalization */
/* game flags */
isGameViewBlocked = false;
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
DialogPanel = instance_create_layer(0, 0, UiLayerId, DialogCoreDef);
GuiLetterPanel = instance_create_layer(0, 0, UiLayerId, GuiLetterCoreDef);
GuiAlertBtn = instance_create_layer(0, 0, UiLayerId, GuiAlertBtnDef);
GuiTurnBtn = instance_create_layer(0, 0, UiLayerId, GuiTurnBtnDef);
GuiBase = instance_create_layer(0, 0, UiLayerId, GuiBaseDef);
/* other game content initialization */
Dialogues = ds_map_create();
Characters = ds_map_create();
LoadGameDialogues();

/* players initialzation */
var MenuLayerId = layer_get_id("MenuLayer");
var Player1 = instance_create_layer(0, 0, MenuLayerId, GamePlayerDef);
with (Player1)
{
	PlayerName = "player1";
	Believers = 100;
}
var Player2 = instance_create_layer(0, 0, MenuLayerId, GamePlayerDef);
with (Player2)
{
	PlayerName = "player2";
	Believers = 50;
}
TurnOrder = [Player1, Player2];
CurrentPlayerTurnIndex = 0;
TurnNo = 0;

UpdateTurnLogic(GuiBase, TurnOrder[CurrentPlayerTurnIndex], TurnNo);

/* music & sfx init/management */
var music_background = audio_play_sound(wind_ambient, 0, true);
music = audio_play_sound(game_ambient, 1, true);
musicDialogue = -1;
audio_sound_gain(music_background, 0.5, 0);
audio_sound_gain(music, 0.4, 0);



