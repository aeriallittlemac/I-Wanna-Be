x -= obj_rhythm_game_arrows.block_speed;
if original_arrow{
	original_timer += delta_time/1000000;

	
}

if x < camera_get_view_x(view_camera[0]){
		instance_destroy(self);
	}