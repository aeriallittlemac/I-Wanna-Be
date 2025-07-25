draw_sprite_ext(spr_rhythm_block_ghost, -1, x*minimap_scale, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );
if instance_exists(obj_rhythm_game){
	if (KICK_DRUM_1 || KICK_DRUM_2)&& obj_rhythm_game.rhythm_line_x_pos >= block_left_border && obj_rhythm_game.rhythm_line_x_pos <= block_right_border{
		obj_rhythm_game.first_beat = true;
		if obj_rhythm_game.kick_sound == noone{
				audio_play_sound(sfx_stomp, 1, false);
			}
			else{
				
				audio_play_sound(obj_rhythm_game.kick_sound, 1, false);
				if obj_rhythm_game.kick_sound == sfx_heartbeat{
					instance_create_depth(obj_player.x, obj_player.y-17*obj_player.image_yscale, OBJ_MAX_DEPTH, obj_heart);
				}
			}
		obj_rhythm_game.player_score += 1;
		var inst = instance_create_depth(x,y,depth, obj_rhythm_block_vfx);
		inst.vfx_sprite = vfx_sprite;
		instance_destroy(self);
	}
}
else{
	instance_destroy(self);
}