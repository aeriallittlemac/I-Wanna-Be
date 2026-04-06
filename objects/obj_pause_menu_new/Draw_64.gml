if global.pause_menu
{
	// Hide any ephemeral hints that may be showing.
	obj_hints.ephemeral_duration = 0;
	
	draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.5); 
	DrawMenu();
	
	if !bookmark_select{
		draw_set_font(default_pixel_font);
		draw_set_color(c_white);
		draw_text_transformed(bookmark_position_list[page].right_x*minimap_scale + 15, bookmark_position_list[page].top_y*minimap_scale, "X", 0.5, 0.5, 0);
	if page == 0{
	//cursor select for page one
		var left_bound = 0;
		var right_bound = 0;
			if box_select_i < page_max_columns{
				left_bound = hint_horizontal_offset*minimap_scale +9+ (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*box_select_i;
				right_bound = left_bound + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column))*minimap_scale;
			}
			else{
				left_bound = hint_horizontal_offset*minimap_scale + second_page_margin*minimap_scale + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*(box_select_i-page_max_columns);
				right_bound = left_bound + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column))*minimap_scale;
			}
			var d_height = (hint_box_height + hint_vertical_margin)*minimap_scale;
			var top_bound = hint_vertical_offset*minimap_scale + d_height*box_select_j-3;
			
			//draw_sprite_ext(IWB_UI_hint_box_column, -1, second_page_margin*minimap_scale + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*i, 0, minimap_scale, minimap_scale, 0, c_white, 1);
			
				//draw_set_font(default_pixel_font);
				//draw_set_color(c_white);
				//draw_text_transformed(15, 15, "x: "+string(i), 0.5, 0.5, 0);
				//draw_text_transformed(15, 45, "y: "+string(j), 0.5, 0.5, 0);
				draw_sprite_ext(IWB_UI_hint_box_column_hl, -1, left_bound, top_bound, minimap_scale, minimap_scale, 0, c_white, 1); 
				
				focus_hint = obj_hints.get_hint(box_select_j, box_select_i);
				obj_hints.draw_hint(focus_hint.found ? focus_hint.text : "???", (left_bound + right_bound) / 2, top_bound - 10);
		
	//cursor select for page two

	}
	else if page == 2{
		DrawCharacter();
		if pamphletPage>0{
			draw_sprite_ext(IWB_UI_character_left_arrow, -1, 0, 0, minimap_scale,minimap_scale, 0, c_white, 1);
		}
		if pamphletPage <array_length(obj_npc_manager.npcs)-1{
		
		draw_sprite_ext(IWB_UI_character_right_arrow, -1, 0, 0, minimap_scale,minimap_scale, 0, c_white, 1);
		}
	}
	}
	//draw_sprite_ext(player_sprite, 0, (player_x - camera_get_view_x(view_camera[0]) )*minimap_scale, player_y*minimap_scale, player_scale_x*minimap_scale, player_scale_y*minimap_scale, 0, c_black, 1);
}
else{
	//draw_set_font(quest_pixel_font);
	//draw_text_transformed_colour(text_x_offset, text_y_offset - 35, "Reputation: " + string(global.reputation), 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

	//draw_text_transformed_colour(text_x_offset + 270, text_y_offset - 35, "Female affinity: " + string(global.female_affinity), 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);
}