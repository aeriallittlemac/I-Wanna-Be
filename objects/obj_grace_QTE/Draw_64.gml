draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.8);
draw_sprite_ext(character_silhouette, character_anim_frame, (character_x+character_shake_offset)*minimap_scale, character_y*minimap_scale, character_scale*minimap_scale, character_scale*minimap_scale, 0, c_white, 1 );
if start{
	draw_set_font(choice_pixel_font);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
		
		for(var i=0; i < array_length(choices); i++){
			var box_height = (string_height_ext(choices[i].choice_text, choice_sep, choice_width) + choice_box_margins*2);
			var box_width = (string_width_ext(choices[i].choice_text, choice_sep, choice_width) + choice_box_margins*2);
			var baseline_fix = 5;
			
			if i == choice_index{
				if !grabbing{
					draw_sprite_stretched_ext(spr_choice_box, -1, choices[i].choice_x*minimap_scale - box_width/2, choices[i].choice_y*minimap_scale-box_height/2, box_width, box_height, c_yellow, 1);
					draw_text_ext_transformed_colour(choices[i].choice_x*minimap_scale, choices[i].choice_y*minimap_scale + baseline_fix, choices[i].choice_text, choice_sep, choice_width, 1,  1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
				}
			}
			else{
				if i ==0{
					draw_sprite_stretched(spr_choice_box, -1, choices[i].choice_x*minimap_scale - box_width/2 + a, choices[i].choice_y*minimap_scale-box_height/2 + b, box_width, box_height);
					draw_text_ext_transformed_colour(choices[i].choice_x*minimap_scale+c, choices[i].choice_y*minimap_scale+d + baseline_fix, choices[i].choice_text, choice_sep, choice_width, 1,  1, 0, c_white, c_white, c_white, c_white, 1);
				}
				else{
					draw_sprite_stretched(spr_choice_box, -1, choices[i].choice_x*minimap_scale - box_width/2, choices[i].choice_y*minimap_scale-box_height/2, box_width, box_height);
					draw_text_ext_transformed_colour(choices[i].choice_x*minimap_scale, choices[i].choice_y*minimap_scale + baseline_fix, choices[i].choice_text, choice_sep, choice_width, 1,  1, 0, c_white, c_white, c_white, c_white, 1);
				}
			}
		}
	
	
	
}

