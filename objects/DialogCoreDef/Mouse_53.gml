if (!isHidden)
{	
	if (string_length(dialogMessage) != dialogCursorIndex)
	{
		dialogSpeed = 1;
	}
	else
	{		
		if((array_length_1d(currentDialogue) - 1) == currentScene)
		{
			alarm[2] = 2;
			return;	
		}
		currentScene++;
		scene = currentDialogue[currentScene];
		dialogName = scene[1];
		dialogMessage = scene[2];
		displayedDialogMessage = "";
		displayedCharacters.currentCharacters = scene[0];
		dialogCursorIndex = 0;
		dialogSpeed = 3;
		alarm[1] = dialogSpeed;
	}
}