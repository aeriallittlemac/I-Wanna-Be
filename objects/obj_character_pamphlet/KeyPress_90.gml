if page == array_length(obj_npc_manager.npcs)-1{
	cursor = LEFT;
}
else if page == 0{
	cursor = RIGHT;
}
if cursor == RIGHT{
	page++;
}
else if cursor == LEFT{
	page--;
}
show_debug_message(page);








