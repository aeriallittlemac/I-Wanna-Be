if instance_exists(obj_rhythm_game){
minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);
var on_beat =  obj_rhythm_game.rhythm_line_x_pos + 135 >= block_left_border && obj_rhythm_game.rhythm_line_x_pos + 135 <= block_right_border;
	draw_sprite_ext(spr_rhythm_block_snare, on_beat, x*minimap_scale, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );
//if obj_rhythm_game.line_speed_dir==1 && obj_rhythm_game.rhythm_line_x_pos + 120 > block_right_border{
//	instance_destroy(self);
//}
//else if obj_rhythm_game.line_speed_dir == -1 && obj_rhythm_game.rhythm_line_x_pos + 120 < block_left_border{
//	instance_destroy(self);
//}
if obj_rhythm_game.line_speed_dir == -cur_dir{
	instance_destroy(self);
}
if SNARE_DRUM && on_beat{
	audio_play_sound(obj_rhythm_game.snare_sound, 1, false);
	obj_rhythm_game.player_score += 1;
	instance_destroy(self);
	}
}
else{
	instance_destroy(self);
}