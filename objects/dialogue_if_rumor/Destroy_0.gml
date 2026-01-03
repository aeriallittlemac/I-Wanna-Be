if deny{
	npc_move_to_pos(obj_grace, 1, 0, obj_player.x, obj_grace.y);
	game_wait(1.6);
	game_NewDialogue(dialogue_if_rumor_deny);
	global.storylines.Sewing_Club.Day_Three.talked_to.grace = true;
}