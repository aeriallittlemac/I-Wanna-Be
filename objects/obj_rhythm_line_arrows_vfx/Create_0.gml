minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
line_sprite = spr_rhythm_line_arrows_vfx;
VFXframe = 0;
vfxFrames = 3;
frame_rate = 24;
timer = 0;
keyDir = vk_nokey;
error = 14;
var nearest_arrow;
var nearest_arrow_x = 0;
for (var i = 0; i < instance_number(obj_arrow); i++)
{
	var arrow = instance_find(obj_arrow,i);
    if abs(x - arrow.x) < (x - nearest_arrow_x){
		nearest_arrow_x = arrow.x;
		nearest_arrow = arrow;
	}
}
if nearest_arrow_x > x - error || nearest_arrow_x < x + error{
	if keyboard_lastkey == MOVE_RIGHT{
		if nearest_arrow.arrow_num == 0{
			obj_rhythm_game_arrows.player_score++;
			var inst = instance_create_depth(nearest_arrow.x, nearest_arrow.y, 0, obj_arrow_hit_vfx)
			inst.arrow_hit_vfx = spr_arrows_hit_right_vfx
			instance_destroy(nearest_arrow);
		}
		else{
			obj_rhythm_game_arrows.player_score--;
		}
	}
	else if keyboard_lastkey == MOVE_UP{
		if nearest_arrow.arrow_num == 1{
			obj_rhythm_game_arrows.player_score++;
			var inst = instance_create_depth(nearest_arrow.x, nearest_arrow.y, 0, obj_arrow_hit_vfx)
			inst.arrow_hit_vfx = spr_arrows_hit_up_vfx
			instance_destroy(nearest_arrow);
		}
		else{
			obj_rhythm_game_arrows.player_score--;
		}
	}
	else if keyboard_lastkey == MOVE_LEFT{
		if nearest_arrow.arrow_num == 2{
			obj_rhythm_game_arrows.player_score++;
			var inst = instance_create_depth(nearest_arrow.x, nearest_arrow.y, 0, obj_arrow_hit_vfx)
			inst.arrow_hit_vfx = spr_arrows_hit_left_vfx
			instance_destroy(nearest_arrow);
		}
		else{
			obj_rhythm_game_arrows.player_score--;
		}
	}
	else if keyboard_lastkey == MOVE_DOWN{
		if nearest_arrow.arrow_num == 3{
			obj_rhythm_game_arrows.player_score++;
			var inst = instance_create_depth(nearest_arrow.x, nearest_arrow.y, 0, obj_arrow_hit_vfx)
			inst.arrow_hit_vfx = spr_arrows_hit_down_vfx
			instance_destroy(nearest_arrow);
		}
		else{
			obj_rhythm_game_arrows.player_score--;
		}
	}
}