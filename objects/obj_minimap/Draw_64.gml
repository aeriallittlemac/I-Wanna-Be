text_x_pos = 62.5
text_y_pos = 7

single_floor_margin = 8;
multiple_floor_margin = 15;
// viewport width / camera width
room_name = room_get_name(room)
floor_cutoff = string_pos("_", room_name)
floor_name_text = string_copy(room_name,floor_cutoff+1, string_length(room_name) - floor_cutoff);
school_hall = string_length(floor_name_text)<3
map_visible = !global.cutscene&&!global.in_dialogue && string_length(floor_name_text)<3;
if map_visible{
minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);
draw_sprite_ext(spr_minimap, -1, x*minimap_scale, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );
for (var i=0; i<array_length(inv); i++){
	var quest_x = global.map_left_border + inv[i].quest_x/(global.real_right_border - global.real_left_border)*(global.map_right_border - global.map_left_border);
	//show_debug_message(quest_x);
	//quest_x = global.map_left_border + inv[i].quest_x/(inv[i].quest_room_width)*(global.map_right_border - global.map_left_border);
	//show_debug_message(quest_x);
	var quest_y = global.map_top_border + inv[i].quest_y/(global.real_bottom_border - global.real_top_border)*(global.map_bottom_border - global.map_top_border);
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
	//var quest_minimap_x_scale = inv[i].quest_room_width*3 / camera_get_view_width(view_camera[0]);
	draw_sprite_ext(inv[i].icon, -1, quest_x*minimap_scale, quest_y*minimap_scale, minimap_scale*obj_playerpointer.image_xscale, minimap_scale*obj_playerpointer.image_yscale, 0, c_white, 1 );
}
draw_set_colour(c_black);
draw_set_font(floor_name);
draw_text((x+text_x_pos)*minimap_scale, (y+text_y_pos)*minimap_scale, floor_name_text);
}