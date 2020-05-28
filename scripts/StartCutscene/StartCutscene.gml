// the script
/// @description StartCutscene(CutsceneID)
/// @param CutsceneID

/* refresh UI view */
game = global.game;
game.isGameViewBlocked = true;

LoadedDialogue = game.Dialogues[? argument0];
game.DialogPanel.currentDialogue = game.Dialogues[? argument0];
startingClip = LoadedDialogue[0];

game.DialogPanel.dialogName = startingClip[1];
game.DialogPanel.dialogMessage = startingClip[2];
game.DialogPanel.displayedDialogMessage = "";
game.DialogPanel.dialogCursorIndex = 0;
game.DialogPanel.currentScene = 0;
game.DialogPanel.dialogSpeed = 3;

/* init dialog music */
audio_sound_gain(game.music, 0.0, 2 * room_speed * 10);
game.musicDialogue = audio_play_sound(dialog_ambient, 1, true);
audio_sound_gain(game.musicDialogue, 0.0, 0);
audio_sound_gain(game.musicDialogue, 0.8, 2 * room_speed * 10);
/* init characters */
game.DialogPanel.displayedCharacters.characters = game.Characters;
game.DialogPanel.displayedCharacters.currentCharacters = startingClip[0];
game.DialogPanel.alpha = 0;

/* alerts 0 - appear, 1 - text flow */
game.DialogPanel.alarm[0] = 2;
game.DialogPanel.alarm[1] = 10;
/* visibility and clickability flags */
game.DialogPanel.isHidden = false;
game.DialogPanel.isCutsceneActive = true;