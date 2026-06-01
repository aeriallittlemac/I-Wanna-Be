if (!active) {
	exit;
}

draw_sprite_ext(textbox_sprite, -1, layout[$textbox_key].x * SCALE, layout[$textbox_key].y * SCALE, SCALE, SCALE, 0, c_white, 1);
text_element.draw(layout[$bounds_key].x * SCALE, layout[$bounds_key].y * SCALE, active_typist);
