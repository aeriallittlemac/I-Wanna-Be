 if global.timed_dialogue{
	var y_offset = 0;
	if room != tutorial{
		y_offset = (!(obj_minimap.school_hall||global.isometric_room||!instance_exists(obj_rhythm_game_new))&&!(array_length(obj_slideshow.slides)>0))*RESOLUTION_W;
	} 
	draw_sprite_ext(sprite_index, -1, x*minimap_scale, y*minimap_scale + y_offset, minimap_scale, minimap_scale, 0, c_white, 1 );
	draw_set_font(default_pixel_font);
	var text_offset = 0;
	var speaker_y_offset = 24;
	var image_scale = 1;
	var jj = min(j, array_length(text)-1);
	if speaker_sprite[jj] != noone{
		
		if sprite_get_width(speaker_sprite[jj]) > 36{
			image_scale = 36/sprite_get_width(speaker_sprite[jj]);
		}
		text_offset = image_scale*sprite_get_width(speaker_sprite[jj])*minimap_scale * (speaker_side[jj] == 0) + portrait_x_border - 8;
		var right_side_icon_pos = (sprite_width - sprite_get_width(speaker_sprite[jj]))*minimap_scale - portrait_x_border * 2;
		draw_sprite_ext(speaker_sprite[jj], -1, x*minimap_scale + right_side_icon_pos*speaker_side[jj] + portrait_x_border, y*minimap_scale + y_offset + speaker_y_offset, minimap_scale*image_scale, minimap_scale*image_scale, 0, c_white, 1 );	
	}
	draw_set_colour(c_white);
	text_width_limit = (((sprite_get_width(spr_textbox)- (speaker_sprite[jj] != noone)*sprite_get_width(speaker_sprite[jj])))*minimap_scale - x_border*2)*2;
	draw_text_ext_transformed(x*minimap_scale + x_border + text_offset, y*minimap_scale + y_offset + y_border, display_text,  line_sep, text_width_limit, 0.5, 0.5, 0);
	timer --;
	
	if !paused{
		if string_length(text[jj]) >= 3{
			if timer <= 0 && i <= string_length(text[jj]){
				display_text += string_char_at(text[jj],i);
				if string_char_at(text[jj],i) == "." || string_char_at(text[jj],i) == "," || string_char_at(text[jj], i) == "!" || string_char_at(text[jj],i) == "?"{
					timer = punctucation_pause;
				}
				else{
					timer = regular_pause;
				}
				i++;
		
				var speech_sound;
				if(speaker_sprite[jj] == noone){
					speech_sound = sfx_bobby_speech;
				}
				else{
					speech_sound = sfx_grace_speech;
				}
				audio_play_sound(speech_sound, 0, false);
		
			}
		}
		else{
			if text[jj] == "n"{
				style = "normal";
			}
			else if text[jj] == "i"{
				style = "italic";
			} 
			alarm[0] = pause_after_line[jj]*room_speed;
			paused = true;
			j++;
		}
	}
	if i > string_length(text[jj]){
		if j > array_length(text)-1{
			global.timed_dialogue = false;
				if room != tutorial{
					if array_length(obj_slideshow.slides) >= 1{
							obj_slideshow.slide_num++;
							show_debug_message("one_next_sllide");
					}
				}
		}
		else{
			alarm[0] = pause_after_line[jj]*room_speed;
			paused = true;
			j++;
			i=1;
			timer = 1;
			if room != tutorial{
				if array_length(obj_slideshow.slides) >= 1{
							obj_slideshow.slide_num++;
							show_debug_message("two_next_sllide");
						}
				}
			}
		}
	
	
}
else{
	skip_key = false;
}
