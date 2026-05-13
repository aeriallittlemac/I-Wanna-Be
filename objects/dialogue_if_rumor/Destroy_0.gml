if deny{
	npc_move_to_pos(obj_grace, 1, 0, obj_player.x, obj_grace.y);
	game_wait(1.6);
	game_NewDialogue(dialogue_if_rumor_deny);
	global.storylines.Sewing_Club.Day_Three.talked_to.grace = true;
}
obj_mei.entityActivateScript = NewDialogue;
obj_mei.entityActivateArg = dialogue_meiseat;
//obj_mei.talk_priority = true;
obj_ashley.entityActivateScript = NewDialogue;
obj_ashley.entityActivateArg = dialogue_ashleyseat;
obj_brooklyn.entityActivateScript = NewDialogue;
obj_brooklyn.entityActivateArg = dialogue_brooklynseat;
//obj_grace.entityActivateScript = NewDialogue;
//obj_grace.entityActivateArg = dialogue_graceseat;
game_wait(0.8);
hint_obtain(global.hints.if_rumor)