event_inherited();
if global.day >= 5{
	audio_stop_all();
	global.storylines.Brooklyns_quest.cash_obtained = true;
	item_acquired(global.item_list.graces_abortion_fund);
	teleport_npc(obj_guy, school_graces_room, 233, 122, LEFT);
	wait(1);
	move_to_pos(1, 0, obj_player.x+1, obj_player.y);
	game_wait(3);
	game_NewDialogue(dialogue_guy_graces_room);
}