if set_timer > 0{
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, intro_alpha);
draw_sprite_ext(character_sprite, 0, character_x, character_y, character_scale*minimap_scale, character_scale*minimap_scale, 0, c_white, 1);
draw_set_color(c_white);
var title_pixel_font = font_add("joystix monospace.otf", 38, false, false, 64, 128);
draw_set_font(title_pixel_font);
draw_text_transformed(character_x+sprite_get_width(character_sprite)*character_scale*minimap_scale + text_x_offset, text_y, displayed_text, 1, 1, 0);

set_timer -= delta_time/1000000;
}
else{
	instance_destroy(self);
}