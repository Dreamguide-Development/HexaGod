if (!parent.isHidden) 
{
	parent.isHidden = true;
	gameRef = global.game;
	index = gameRef.CurrentPlayerTurnIndex;
	
	if (gameRef.TurnOrder[index].Believers >= 10) gameRef.TurnOrder[index].Believers -= 10;
	gameRef.isGameViewBlocked = false;
	UpdateTurnLogic(gameRef.GuiBase, gameRef.TurnOrder[index], gameRef.TurnNo);
	
	StartCutscene("dialogue_0");
}