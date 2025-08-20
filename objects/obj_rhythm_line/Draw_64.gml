if obj_rhythm_game_new.offset_time <=0 {
draw_sprite_ext(line_sprite, round(image_index*(sprite_get_speed(line_sprite)/30)), obj_rhythm_game_new.rhythm_line_x_pos*minimap_scale, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );
}