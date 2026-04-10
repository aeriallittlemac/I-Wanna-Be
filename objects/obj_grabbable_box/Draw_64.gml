draw_set_font(choice_pixel_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
box_height = (string_height_ext(choice_text, choice_sep, choice_width) + choice_box_margins*2);
box_width = (string_width_ext(choice_text, choice_sep, choice_width) + choice_box_margins*2);
var baseline_fix = 5;
draw_sprite_stretched_ext(spr_choice_box, -1, choice_x*minimap_scale - box_width/2, choice_y*minimap_scale-box_height/2, box_width, box_height, #70A2E9, 1);
draw_text_ext_transformed_colour(choice_x*minimap_scale, choice_y*minimap_scale + baseline_fix, choice_text, choice_sep, choice_width, 1,  1, 0, #70A2E9, #70A2E9, #70A2E9, #70A2E9, 1);