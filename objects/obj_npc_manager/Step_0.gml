for(var i=0; i < array_length(npcs); i++){
	if npcs[i].cur_room == room{
		instance_activate_object(npcs[i].object);
	}
	
}
global.npc_active = check_npc_activity();