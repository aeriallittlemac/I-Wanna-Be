if instance_exists(obj_snake){
	obj_snake.win_cutscene = win_cutscene;
	obj_snake.lose_cutscene = lose_cutscene;
	obj_snake.previous_room = current_room;
	obj_snake.player_x = player_x;
	obj_snake.player_y = player_y;
	instance_destroy(self);
}