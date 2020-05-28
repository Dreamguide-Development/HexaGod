/* variables */
separator = 35;
nameBorder = 310;
textBorder = 1200;
scale = 1;
isHidden = true;
/* game variables */
isCutsceneActive = false;
dialogName = "";
dialogMessage = "";
displayedDialogMessage = "";
dialogCursorIndex = 0;
currentDialogue = -1;
currentScene = 0; /* clip index */
alpha = 0;
dialogSpeed = 0;

/* component children */
var UiLayerId = layer_get_id("UiLayer");
background = instance_create_layer(0, 0, UiLayerId, DialogBackgroundDef);
displayedCharacters = instance_create_layer(0, 0, UiLayerId, DialogCharactersDispDef);

/* initializing component variables */
background.parent = self;
background.width *= scale;
background.height *= scale;

displayedCharacters.parent = self;
