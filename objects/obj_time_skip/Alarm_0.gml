screen_index++;
if screen_index>=sprite_get_number(spr_time_skip){
	instance_destroy(self);
}
else{
	if screen_index == sprite_get_number(spr_time_skip)-4{
		obj_player.x = target_x;
		obj_player.y = target_y;
		game_camera_change_settings(obj_player, -1);
	}
alarm[0] = 20;
}