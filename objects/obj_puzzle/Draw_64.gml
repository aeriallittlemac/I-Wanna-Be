draw_set_font(choice_pixel_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if piece_index == obj_brooklyn_QTE_new.select_piece_index{
	draw_sprite_stretched_ext(spr_choice_box, -1,(x-1)*minimap_scale, (y-1)*minimap_scale, 32*minimap_scale, 32*minimap_scale, c_yellow, 1);
}
draw_sprite_ext(puzzle_piece_sprite, puzzle_index, x*minimap_scale, y*minimap_scale, 1, 1, 0, c_white, 1);
var row = floor(puzzle_index/obj_brooklyn_QTE_new.puzzle_row_num);
var col = puzzle_index%obj_brooklyn_QTE_new.puzzle_row_num;
		
		var text_angle = 0;
		if row%2 == 0{
			if col%2 == 0{
				text_angle = 45;
			}
			else{
				text_angle = -60;
			}
		}
		else{
			if col%2 == 1{
				text_angle = 45;
			}
			else{
				text_angle = -60;
			}
		}
draw_text_ext_transformed_colour((x+0.5*29)*minimap_scale,  (y+0.5*29)*minimap_scale, puzzle_word, -1, -1, 1,  1, text_angle, c_yellow, c_yellow, c_yellow, c_yellow, 1);