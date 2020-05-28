// the script
/// @description UpdateTurnLogic(UiHook, targetedPlayerHook)
/// @param UiHook
/// @param targetedPlayerHook
/// @param turnNo

/* refresh UI view */
argument0.UiBelieversCount = string(argument1.Believers);
argument0.UiActivePlayer = string(argument1.PlayerName);
argument0.UiTurnNo = string(argument2);

/* logic update */

//sample event appears
if (argument2 >= 1 && argument2 % 2 == 1  && global.game.CurrentPlayerTurnIndex == 0 &&
global.game.GuiAlertBtn.isHidden && !global.testflag)
{
	audio_play_sound(alert, 10, false);
	global.game.GuiAlertBtn.isHidden = false;
	global.testflag = true; //temp
}