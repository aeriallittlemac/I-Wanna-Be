//if global.in_dialogue{
//	var y_offset = !(obj_minimap.school_hall||global.isometric_room)*270
//	minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);
//	draw_sprite_ext(sprite_index, -1, x*minimap_scale, y*minimap_scale + y_offset, minimap_scale, minimap_scale, 0, c_white, 1 );
//	draw_set_font(default_pixel_font);
//	var text_offset = 0;
//	var speaker_y_offset = 24;
//	var image_scale = 1;
//	if speaker_sprite[j] != noone{
		
//		if sprite_get_width(speaker_sprite[j]) > 36{
//			image_scale = 36/sprite_get_width(speaker_sprite[j]);
//		}
//		text_offset = image_scale*sprite_get_width(speaker_sprite[j])*minimap_scale * (speaker_side[j] == 0) + portrait_x_border - 8;
//		var right_side_icon_pos = (sprite_width - sprite_get_width(speaker_sprite[j]))*minimap_scale - portrait_x_border * 2;
//		draw_sprite_ext(speaker_sprite[j], -1, x*minimap_scale + right_side_icon_pos*speaker_side[j] + portrait_x_border, y*minimap_scale + y_offset + speaker_y_offset, minimap_scale*image_scale, minimap_scale*image_scale, 0, c_white, 1 );	
//	}
//	draw_set_colour(c_white);
//	text_width_limit = (((sprite_get_width(spr_textbox)- (speaker_sprite[j] != noone)*sprite_get_width(speaker_sprite[j])))*minimap_scale - x_border*2)*2;
//	draw_text_ext_transformed(x*minimap_scale + x_border + text_offset, y*minimap_scale + y_offset + y_border, display_text,  line_sep, text_width_limit, 0.5, 0.5, 0);
//	//options
//	if display_text == text[j] && j == array_length(text)-1{
//		option_pos += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
//		option_pos = clamp(option_pos, 0, option_number-1);
//		var option_x_offset = 68;
//		var option_y_offset = 80;
//		var arrow_x_offset = -sprite_get_width(spr_textbox_arrow) * minimap_scale;
//		var _op_space = 500;
//		//draw the options
//		for ( var op = 0; op< option_number; op++){
//			//the option text
//			draw_set_colour(c_white);
//			draw_text_transformed(x*minimap_scale + x_border + text_offset + option_x_offset + op* _op_space /option_number, y*minimap_scale + y_offset + option_y_offset, option[op], 0.5, 0.5, 0);
//			//the arrow
//			if option_pos == op{
//				draw_sprite_ext(spr_textbox_arrow, 0, x*minimap_scale + x_border + text_offset + option_x_offset + arrow_x_offset + op* _op_space /option_number,  y*minimap_scale + y_offset + option_y_offset, minimap_scale, minimap_scale, 0, c_white, 1 );	
//			}
//		}
//	}
//	timer --;
//	accept_key = keyboard_check_pressed(ord("Z"))&&!global.input_off;
//	skip_key = keyboard_check(ord("X"));
//	if timer <= 0 && i <= string_length(text[j]){
//		display_text += string_char_at(text[j],i);
//		if string_char_at(text[j],i) == "." || string_char_at(text[j],i) == "," || string_char_at(text[j], i) == "!" || string_char_at(text[j],i) == "?"{
//			timer = punctucation_pause;
//		}
//		else{
//			timer = regular_pause;
//		}
//		i++;
		
//		var speech_sound;
//		if(speaker_sprite[j] == noone){
//			speech_sound = sfx_bobby_speech;
//		}
//		else{
//			speech_sound = sfx_grace_speech;
//		}
//		audio_play_sound(speech_sound, 0, false);
		
//	}
	
//	if (accept_key||skip_key) && string_length(display_text) >= 3{
//		if i <= string_length(text[j]){
//			display_text = text[j];
//			i = string_length(text[j])+1;
//			timer = regular_pause;
//		}
//		else{
//			if j >= array_length(text)-1{
//				if option_number > 0{
//					cur_dialogue.branches(option_link_id[option_pos]);
//				}
//				else{
//					global.in_dialogue = false;
//					if array_length(obj_slideshow.slides) >= 1{
//						obj_slideshow.slide_num++;
//					}
			
//				}
				
				
//			}
//			else{
//			j++;
//			i=1;
//			timer = 1;
//			display_text = "";
//			if array_length(obj_slideshow.slides) >= 1{
//						obj_slideshow.slide_num++;
//					}
//			}
//		}
//	}
	
//}
