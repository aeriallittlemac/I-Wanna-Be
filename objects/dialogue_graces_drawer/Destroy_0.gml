event_inherited();
if global.day >= 5{
	global.storylines.Brooklyns_quest.cash_obtained = true;
	item_acquired(global.item_list.graces_abortion_fund);
	teleport_npc(obj_guy, school_graces_room, 233, 122, LEFT);
	game_wait(1.5);
	game_NewDialogue(dialogue_guy_graces_room);
}