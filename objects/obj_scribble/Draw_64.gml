if (!active) {
	exit;
}

draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.5);

if (identified == 1) {
	draw_portrait(active_portrait_sprite, portrait_bounds_key);
} else if (identified == 2) {
	for (var i = 0; i < array_length(active_portrait_sprites_bounds); ++i) {
		draw_portrait(active_portrait_sprites_bounds[i][0], active_portrait_sprites_bounds[i][1]);
	}
}

draw_sprite_ext(textbox_sprite, -1, layout[$textbox_key].x * SCALE, layout[$textbox_key].y * SCALE, SCALE, SCALE, 0, c_white, 1);
text_element.draw(layout[$bounds_key].x * SCALE, layout[$bounds_key].y * SCALE, active_typist);

if (identified > 0) {
	draw_sprite_ext(namebox_sprite, -1, layout[$namebox_key].x * SCALE, layout[$namebox_key].y * SCALE, SCALE, SCALE, 0, c_white, 1);
	name_element.draw(layout[$name_bounds_key].x * SCALE, layout[$name_bounds_key].y * SCALE);
}
