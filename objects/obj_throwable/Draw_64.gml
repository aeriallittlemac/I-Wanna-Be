draw_set_font(choice_pixel_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
box_height = (string_height_ext(choice_text, choice_sep, choice_width) + choice_box_margins*2)*image_scale;
box_width = (string_width_ext(choice_text, choice_sep, choice_width) + choice_box_margins*2)*image_scale;
var baseline_fix = 5;
draw_sprite_stretched(spr_choice_box, -1, choice_x*minimap_scale - box_width/2, choice_y*minimap_scale-box_height/2, box_width, box_height);
draw_text_ext_transformed_colour(choice_x*minimap_scale, choice_y*minimap_scale + baseline_fix, choice_text, choice_sep, choice_width, image_scale,  image_scale, 0, c_white, c_white, c_white, c_white, 1);