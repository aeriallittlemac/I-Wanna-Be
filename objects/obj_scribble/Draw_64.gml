if (!active) {
	exit;
}

if (black_filter && !instance_exists(obj_dating_sim)) {
	draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.5);
}

if (identified == 1 && active_portrait_sprite != noone) {
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

if (active_typist.get_state() == 1 
	&& active_choices != noone && text_element.on_last_page()
) {
	var count = array_length(active_choices);
	for (var i = 0; i < count; ++i) {
		var selected_choice = active_choices[i];
		var confirmed = i == active_choice_idx;
		draw_sprite_ext(selected_choice.textbox_sprite, -1, layout[$selected_choice.textbox_key].x * SCALE, layout[$selected_choice.textbox_key].y * SCALE, SCALE, SCALE, 0, c_white, confirmed ? 1 : 0.5);
		selected_choice.text_element.draw(layout[$selected_choice.bounds_key].x * SCALE, layout[$selected_choice.bounds_key].y * SCALE, selected_choice.typist);
	}
}
