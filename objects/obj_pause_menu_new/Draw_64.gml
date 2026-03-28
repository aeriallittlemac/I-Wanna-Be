if global.pause_menu
{
	// Hide any ephemeral hints that may be showing.
	obj_hints.ephemeral_duration = 0;
	
	draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.5); 
	DrawMenu();
	var mouseOnButton = false;
	for(var i=0; i<array_length(bookmark_position_list); i++){
		if obj_menu_mouse.x > bookmark_position_list[i].left_x*minimap_scale
	&& obj_menu_mouse.x < bookmark_position_list[i].right_x*minimap_scale
	&& obj_menu_mouse.y > bookmark_position_list[i].top_y*minimap_scale
	&& obj_menu_mouse.y < bookmark_position_list[i].bottom_y*minimap_scale{
		draw_sprite_ext(bookmark_position_list[i].button_sprite, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
		selected_page = i;
		mouseOnButton = true;
		
		}
	
	}
	if !mouseOnButton{
		selected_page = page;
	}
	
	if page == 0{
	//cursor select for page one
	for(var i=0; i< page_max_columns; i++){
		for(var j=0; j<4; j++){
			var left_bound = hint_horizontal_offset*minimap_scale + 12 + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*i;
			var right_bound = left_bound + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column))*minimap_scale;
			var d_height = (hint_box_height + hint_vertical_margin)*minimap_scale;
			var top_bound = hint_vertical_offset*minimap_scale + d_height*j;
			var bottom_bound = hint_vertical_offset*minimap_scale + d_height * (j + 1);
			
			//draw_sprite_ext(IWB_UI_hint_box_column, -1, second_page_margin*minimap_scale + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*i, 0, minimap_scale, minimap_scale, 0, c_white, 1);
			if obj_menu_mouse.x > left_bound
			&& obj_menu_mouse.x < right_bound
			&& obj_menu_mouse.y > top_bound
			&& obj_menu_mouse.y < bottom_bound {
				draw_set_font(default_pixel_font);
				draw_set_color(c_white);
				draw_text_transformed(15, 15, "x: "+string(i), 0.5, 0.5, 0);
				draw_text_transformed(15, 45, "y: "+string(j), 0.5, 0.5, 0);
				
				
				focus_hint = obj_hints.get_hint(j, i);
				obj_hints.draw_hint(focus_hint.found ? focus_hint.text : "???", (left_bound + right_bound) / 2, top_bound - 10);
			}
		}
	
		}
	//cursor select for page two
	if (hint_columns > page_max_columns){
		for(var i=page_max_columns; i< hint_columns; i++){
			for(var j=0; j<4; j++){
				var left_bound = hint_horizontal_offset*minimap_scale + second_page_margin*minimap_scale + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*(i-page_max_columns);
				var right_bound = left_bound + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column))*minimap_scale;
				var d_height = (hint_box_height + hint_vertical_margin)*minimap_scale;
				var top_bound = hint_vertical_offset*minimap_scale + d_height*j;
				var bottom_bound = hint_vertical_offset*minimap_scale + d_height * (j + 1);
				
				//draw_sprite_ext(IWB_UI_hint_box_column, -1, second_page_margin*minimap_scale + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*i, 0, minimap_scale, minimap_scale, 0, c_white, 1);
				if obj_menu_mouse.x > left_bound
				&& obj_menu_mouse.x < right_bound
				&& obj_menu_mouse.y > top_bound
				&& obj_menu_mouse.y < bottom_bound {
					draw_set_font(default_pixel_font);
					draw_set_color(c_white);
					draw_text_transformed(15, 15, "x: "+string(i), 0.5, 0.5, 0);
					draw_text_transformed(15, 45, "y: "+string(j), 0.5, 0.5, 0);
					
					focus_hint = obj_hints.get_hint(j, i);
					obj_hints.draw_hint(focus_hint.found ? focus_hint.text : "???", (left_bound + right_bound) / 2, top_bound - 10);
				}
			}
		}
	
	}
	}
	else if page == 2{
		DrawCharacter();
	
	}
	
	//draw_sprite_ext(player_sprite, 0, (player_x - camera_get_view_x(view_camera[0]) )*minimap_scale, player_y*minimap_scale, player_scale_x*minimap_scale, player_scale_y*minimap_scale, 0, c_black, 1);
}
else{
	//draw_set_font(quest_pixel_font);
	//draw_text_transformed_colour(text_x_offset, text_y_offset - 35, "Reputation: " + string(global.reputation), 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

	//draw_text_transformed_colour(text_x_offset + 270, text_y_offset - 35, "Female affinity: " + string(global.female_affinity), 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);
}