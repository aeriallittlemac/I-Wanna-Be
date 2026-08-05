event_inherited();
if global.day == 3{
game_NewCharacterIntro(obj_guy);
game_NewDialogue(dialogue_guy_classroom_lab_1);
}
else if global.day == 5{
	global.storylines.Lab.Day_Five.talked_to.guy = true;
}