teleport_npc(obj_gambino, noone, 0, 0, DOWN);
var inst = instance_create_depth(0,0,0,obj_black_screen);
with inst{
	screen_duration = 1;
}
game_wait(2);
game_NewDialogue(dialogue_conversation_with_gambino_2)