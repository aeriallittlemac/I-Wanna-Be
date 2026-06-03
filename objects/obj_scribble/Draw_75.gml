if (!active) {
	exit;
}

draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.5);

if (identified) {
	var portrait_scale = layout[$portrait_bounds_key].height * SCALE / sprite_get_height(active_portrait_sprite);
	var x_offset = sprite_get_xoffset(active_portrait_sprite) * portrait_scale;
	var y_offset = sprite_get_yoffset(active_portrait_sprite) * portrait_scale;
	draw_sprite_ext(active_portrait_sprite, -1, layout[$portrait_bounds_key].x * SCALE + x_offset, layout[$portrait_bounds_key].y * SCALE + y_offset, portrait_scale, portrait_scale, 0, c_white, 1);
}

draw_sprite_ext(textbox_sprite, -1, layout[$textbox_key].x * SCALE, layout[$textbox_key].y * SCALE, SCALE, SCALE, 0, c_white, 1);
text_element.draw(layout[$bounds_key].x * SCALE, layout[$bounds_key].y * SCALE, active_typist);

if (identified) {
	draw_sprite_ext(namebox_sprite, -1, layout[$namebox_key].x * SCALE, layout[$namebox_key].y * SCALE, SCALE, SCALE, 0, c_white, 1);
	name_element.draw(layout[$name_bounds_key].x * SCALE, layout[$name_bounds_key].y * SCALE);
}
