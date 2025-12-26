if (global.in_hints) {
	draw_sprite_ext(spr_hints_background, -1, 0, 0, ui_scale, ui_scale, 0, c_white, 1);
	draw_sprite_ext(spr_hint_highlight, -1, hint_grid_y + focus_col * hint_grid_spacing + highlight_offset, hint_grid_x + focus_row * hint_grid_spacing + highlight_offset, highlight_scale * ui_scale, highlight_scale * ui_scale, 0, c_white, 1);
	
	for (var row = 0; row < array_length(hint_grid); ++row) {
	    for (var col = 0; col < array_length(hint_grid[row]); ++col) {
			var hint = global.hints[$hint_grid[row][col]];
			var hint_sprite = hint.found ? hint.sprite : spr_hint_unknown;
			var box_width = sprite_get_width(spr_hint_box);
			var icon_width = sprite_get_width(hint_sprite);
			var icon_scale = box_width / icon_width * icon_scale_relative * box_scale;
			var icon_padding = (box_width * box_scale - icon_width * icon_scale) / 2 * ui_scale;
			draw_sprite_ext(spr_hint_box, -1, hint_grid_y + col * hint_grid_spacing, hint_grid_x + row * hint_grid_spacing, box_scale * ui_scale, box_scale * ui_scale, 0, c_white, 1);
			draw_sprite_ext(hint_sprite, -1, icon_padding + hint_grid_y + col * hint_grid_spacing, icon_padding + hint_grid_x + row * hint_grid_spacing, icon_scale * ui_scale, icon_scale * ui_scale, 0, c_white, 1);
		}
	}
	
	var focus_hint = global.hints[$hint_grid[focus_row][focus_col]];
	draw_hint(focus_hint.found ? focus_hint.text : "???");
	
	ephemeral_duration = 0;
}

if (ephemeral_duration > 0) {
	draw_hint(ephemeral_text);
}
