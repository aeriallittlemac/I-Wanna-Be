if instance_exists(obj_player_running){
	if x > obj_player_running.x -1 && x <obj_player_running.x +1{
		instance_destroy(obj_player_running);
		instance_create_depth(0,0, OBJ_MAX_DEPTH, obj_game_over_screen);
	}
}