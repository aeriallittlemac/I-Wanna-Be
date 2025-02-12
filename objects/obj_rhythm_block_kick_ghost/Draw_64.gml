minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);
draw_sprite_ext(spr_rhythm_block_ghost, -1, x*minimap_scale, 0, minimap_scale, minimap_scale, 0, c_white, 1 );
if (KICK_DRUM_1 || KICK_DRUM_2)&& obj_rhythm_game.rhythm_line_x_pos + 135 >= block_left_border && obj_rhythm_game.rhythm_line_x_pos + 135 <= block_right_border{
	obj_rhythm_game.first_beat = true;
	audio_play_sound(sfx_stomp, 1, false);
	obj_rhythm_game.player_score += 1;
	instance_destroy(self);
}