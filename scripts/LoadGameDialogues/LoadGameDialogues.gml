/* game characters initialization */
characters = ds_map_create();
ds_map_add(characters, "Alisa_0", Char0_spr);
global.game.Characters = characters;
/* dialogue lines */
dialogues = ds_map_create();
/* clip struct: scenecharacter, actual speaker name, speaking sound, text */
/* sceneCharacters - Character Id, sprite image, isFocusOn, xPosition   */
clip = []
sceneCharacters = ["Alisa_0", 2, 1, 100];
clip[0] = [sceneCharacters, "???", "Well met there apprentice god! My name is Alisa and from now on I will be your advisor on this battlefield."];
sceneCharacters = ["Alisa_0", 1, 1, 100];
clip[1] = [sceneCharacters, "Alisa", "Because religion is war and everyone knows that!"];
sceneCharacters = ["Alisa_0", 4, 1, 100];
clip[2] = [sceneCharacters, "Alisa", "Also I've been delegated here by the gods council to monitor your progress."];
sceneCharacters = ["Alisa_0", 3, 1, 100];
clip[3] = [sceneCharacters, "Alisa", "I look forward to our fruitful cooperation!"];
sceneCharacters = ["Alisa_0", 0, 1, 100];
clip[4] = [sceneCharacters, "Alisa", "Please continue with LMB or Space to close this chit-chat panel."];

ds_map_add(dialogues, "dialogue_0", clip);
global.game.Dialogues = dialogues;

