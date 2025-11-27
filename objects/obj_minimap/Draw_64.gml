
// viewport width / camera width
room_name = room_get_name(room)
floor_cutoff = string_pos("_", room_name)
floor_name_text = string_copy(room_name,floor_cutoff+1, string_length(room_name) - floor_cutoff);
school_hall = string_length(floor_name_text)<3
if map_visible && school_hall && !instance_exists(obj_stealth_mission_bars){
var minimap_sprite = spr_minimap_yk_ver;
	if floor_name_text == "2F"{
		minimap_sprite = spr_minimap_yk_ver_2F;
	}
	else if floor_name_text == "3F"{
		minimap_sprite = spr_minimap_yk_ver_3F;
	}
draw_sprite_ext(minimap_sprite, -1, x*minimap_scale, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );
for (var i=0; i<array_length(inv); i++){
	
	var displayed_sprite_icon = inv[i].icon;
	var quest_room_order=0;
	var room_order=0;
	for(var j=0; j<array_length(rooms);j++){
		if rooms[j] == inv[i].quest_room{
			quest_room_order = j;
		}
		if rooms[j] == room{
			room_order = j;
		}
	}
	var quest_x = global.map_left_border + inv[i].quest_x/(global.real_right_border - global.real_left_border)*(global.map_right_border - global.map_left_border);
			//show_debug_message(quest_x);
			//quest_x = global.map_left_border + inv[i].quest_x/(inv[i].quest_room_width)*(global.map_right_border - global.map_left_border);
			//show_debug_message(quest_x);
	var quest_y = global.map_top_border + inv[i].quest_y/(global.real_bottom_border - global.real_top_border)*(global.map_bottom_border - global.map_top_border);
	if inv[i].icon == spr_main_quest_icon && quest_room_order != room_order{
		quest_y = y+5;
		if quest_room_order > room_order{
			
			quest_x = x+25 + (14*(floor_name_text == "2F")) + (18*(floor_name_text == "3F"));
			displayed_sprite_icon = spr_go_up;
		}
		else{
			quest_x = x+31 - (4*(floor_name_text == "2F")) + (16*(floor_name_text == "3F"));
			displayed_sprite_icon = spr_go_down;
		}
	}
	else {
	if quest_room_order > room_order{
		if quest_room_order == room_order + 1{
			quest_y -= single_floor_margin;
		}
		else{
			quest_y -= multiple_floor_margin;
		}
	}
	if quest_room_order < room_order{
		if quest_room_order + 1 == room_order{
			quest_y += single_floor_margin;
		}
		else{
			quest_y += multiple_floor_margin;
		}
	}
	}
	draw_sprite_ext(displayed_sprite_icon, -1, quest_x*minimap_scale, quest_y*minimap_scale, minimap_scale*obj_playerpointer.image_xscale, minimap_scale*obj_playerpointer.image_yscale, 0, c_white, 1 );
}
draw_set_colour(c_black);
draw_set_font(floor_name);
draw_text((x+text_x_pos)*minimap_scale, (y+text_y_pos)*minimap_scale, floor_name_text);
}