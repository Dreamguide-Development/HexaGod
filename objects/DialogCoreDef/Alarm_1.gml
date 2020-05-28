if (string_length(dialogMessage) != dialogCursorIndex)
{
	displayedDialogMessage = string_copy(dialogMessage, 0, dialogCursorIndex + 1);
	dialogCursorIndex++;
	alarm[1] = dialogSpeed;
}