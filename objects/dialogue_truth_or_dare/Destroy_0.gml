teleport_npc(obj_grace, school_sewing_club, 215,45,DOWN);
game_wait(1);
//open door sound
game_NewCharacterIntro(obj_grace);
if truth{
	game_NewDialogue(dialogue_truth);
}
else{
	game_NewDialogue(dialogue_dare);
}