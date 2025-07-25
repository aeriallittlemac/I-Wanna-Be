if global.in_inventory{
	draw_sprite_ext(spr_inventory_new, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1 );
	draw_set_font(default_pixel_font);
	//var speaker_y_offset = 24;
	//var image_scale = 1;
		text_offset = 8;
		//var right_side_icon_pos = (sprite_get_width(spr_inventory_box) - sprite_get_width(spr_backpack))*minimap_scale - portrait_x_border * 2;
		//draw_sprite_ext(spr_backpack, -1, right_side_icon_pos + portrait_x_border, y_border + speaker_y_offset, minimap_scale*image_scale, minimap_scale*image_scale, 0, c_white, 1 );	
	
	draw_set_colour(#55402c);
	//options
		item_pos += keyboard_check_pressed(MOVE_DOWN) - keyboard_check_pressed(MOVE_UP);
		item_pos = clamp(item_pos, 0, array_length(inventory)-1);
		var option_x_offset = 90;
		var option_y_offset = 80;
		var arrow_x_offset = -sprite_get_width(spr_textbox_arrow) * minimap_scale - 8;
		var _op_sep = 30;
		//draw the options
		for ( var op = 0; op< array_length(inventory); op++){
			//the option text
			draw_set_colour(#55402c);
			draw_text_transformed(x_border + text_offset + option_x_offset, y_border + option_y_offset + op* _op_sep, inventory[op].item_name, 0.5, 0.5, 0);
			//the arrow
			if item_pos == op{
				draw_sprite_ext(spr_textbox_arrow, 0, x_border + text_offset + option_x_offset + arrow_x_offset, y_border + option_y_offset + op* _op_sep, minimap_scale, minimap_scale, 0, #55402c, 1 );	
			}
		}
		accept_key = keyboard_check_pressed(CONFIRM_ACTION)
		if accept_key{
			NewDialogue(inventory[item_pos].item_dialogue);
			global.in_inventory = false;
		}
	}
