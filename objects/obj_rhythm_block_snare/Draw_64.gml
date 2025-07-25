if instance_exists(obj_rhythm_game){
var on_beat =  obj_rhythm_game.rhythm_line_x_pos >= block_left_border && obj_rhythm_game.rhythm_line_x_pos <= block_right_border;
draw_sprite_ext(snare_sprite, on_beat, x*minimap_scale, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );
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
	if obj_rhythm_game.kick_sound == sfx_heartbeat{
		instance_create_depth(obj_player.x, obj_player.y-12*obj_player.image_yscale, OBJ_MAX_DEPTH, obj_heart);
	}
	audio_play_sound(obj_rhythm_game.snare_sound, 1, false);
	obj_rhythm_game.player_score += 1;
	var inst = instance_create_depth(x,y,depth, obj_rhythm_block_vfx);
	switch (snare_sprite)
		{
		    case spr_rhythm_block_snare_grace:
		        inst.vfx_sprite = spr_rhythm_block_vfx_grace;
		    break;
			case spr_rhythm_block_snare_mei:
		        inst.vfx_sprite = spr_rhythm_block_vfx_mei;
		    break;

		    default:
	        //
		}
	instance_destroy(self);
	}
}
else{
	instance_destroy(self);
}