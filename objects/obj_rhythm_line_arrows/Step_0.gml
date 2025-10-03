if (KICK_DRUM_1 || KICK_DRUM_2){
	var inst = instance_nearest(x, obj_rhythm_game_new.kick_offset_y, obj_rhythm_block_kick);
	if inst != noone{
		if inst.on_beat{
			if obj_rhythm_game_new.kick_sound == noone{
				audio_play_sound(sfx_stomp, 1, false);
			}
			else{
				audio_play_sound(obj_rhythm_game_new.kick_sound, 1, false);
				if obj_rhythm_game_new.kick_sound == sfx_heartbeat{
					instance_create_depth(obj_player.x, obj_player.y-12*obj_player.image_yscale, OBJ_MAX_DEPTH, obj_heart);
				}
			}
			obj_rhythm_game_new.player_score += 1;
			var inst = instance_create_depth(x,y,depth, obj_rhythm_block_vfx);
			switch (obj_rhythm_game_new.kick_sprite)
			{
			    case spr_rhythm_block_snare_grace:
			        inst.vfx_sprite = spr_rhythm_block_vfx_grace;
			    break;
				case spr_rhythm_block_kick_mei:
		        inst.vfx_sprite = spr_rhythm_block_vfx_mei;
		    break;
			    default:
		        //
			}
			instance_destroy(inst);
		}
	}
}