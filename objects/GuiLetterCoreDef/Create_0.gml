/* variables */
PosX = 201;
PosY = 101;
separator = 25;
textMessageBorder = 350;
optionTextMessageBorder = 280;
scale = 1;
isHidden = true;
/* game variables */
messageString = "It seems that you have lost 10 of your believers, are you fine with that?";
option0Message = "No.";
option1Message = "Heck, no!";
option2Message = "Well yes, but actually no.";

/* component children */
var UiLayerId = layer_get_id("UiLayer");
var checkBox0 = instance_create_layer(0, 0, UiLayerId, GuiLetterCheckboxDef);
var checkBox1 = instance_create_layer(0, 0, UiLayerId, GuiLetterCheckboxDef);
var checkBox2 = instance_create_layer(0, 0, UiLayerId, GuiLetterCheckboxDef);
var background = instance_create_layer(0, 0, UiLayerId, GuiLetterBackgroundDef);

checkboxes = [checkBox0, checkBox1, checkBox2];
/* initializing component variables */
for(i = 0; i < array_length_1d(checkboxes); i++)
{
	checkboxes[i].parent = self;
	checkboxes[i].imagePosX = PosX + 60;
	checkboxes[i].imagePosY = PosY + 315 + (88 * i);
	checkboxes[i].isAvailable = true;
	checkboxes[i].width *= scale;
	checkboxes[i].height *= scale;
}
background.parent = self;
background.width *= scale;
background.height *= scale;
