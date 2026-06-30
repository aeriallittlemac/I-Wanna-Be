global.in_hints = false;

global.hints = {
	meeting_mei: {
		sprite: spr_mei_portrait_default, 
		text: "Public composure is key to survival.", 
		found: false, 
		utilized: false, 
		save_name: "Meeting Mei"
	}, 
	after_first_class: {
		sprite: spr_wei_icon, 
		text: "stuff?", 
		found: false, 
		utilized: false, 
		save_name: "After First Class"
	}, 
	if_rumor_choose: {
		sprite: spr_mcronald_icon, 
		text: "Word goes around", 
		found: false, 
		utilized: false, 
		save_name: "Hanging with the boys"
	}, 
	if_rumor: {
		sprite: spr_grace_frown, 
		text: "Always double down.", 
		found: false, 
		utilized: false, 
		save_name: "If Rumor"
	}, 
	if_rumor_deny: {
		sprite: spr_mei_portrait_default, 
		text: "Some people are better mediators? Perchance.", 
		found: false, 
		utilized: false, 
		save_name: "If Rumor Deny"
	}, 
	beef: {
		sprite: spr_hot_pocket, 
		text: "A recall for the \"philly cheesesteak\" variety of Hot Pockets was issued due to concern of beef contamination caused by a supplier.", 
		found: false, 
		utilized: false, 
		save_name: "Chicken Katsu"
	},
	yup: {
		sprite: spr_grace_portrait_default, 
		text: "The end-Cretaceous mass extinction occurred about 65 million years ago.", 
		found: false, 
		utilized: false, 
		save_name: "Cretaceous"
	}, 
	uhhuh: {
		sprite: spr_hot_pocket, 
		text: "A recall for the \"philly cheesesteak\" variety of Hot Pockets was issued due to concern of beef contamination caused by a supplier.", 
		found: false, 
		utilized: false, 
		save_name: "Chicken Katsu"
	},
	yeh: {
		sprite: spr_grace_portrait_default, 
		text: "The end-Cretaceous mass extinction occurred about 65 million years ago.", 
		found: false, 
		utilized: false, 
		save_name: "Cretaceous"
	}, 
	bi: {
		sprite: spr_hot_pocket, 
		text: "A recall for the \"philly cheesesteak\" variety of Hot Pockets was issued due to concern of beef contamination caused by a supplier.", 
		found: false, 
		utilized: false, 
		save_name: "Chicken Katsu"
	}
	
};

is_choosing_restore = false;

hint_grid = [
	["meeting_mei", "if_rumor_deny"], 
	//["after_first_class", "beef"],
	["if_rumor_choose", "if_rumor"],
	["yup", "uhhuh"],
	["yeh", "bi"]
];

focus_row = 0;
focus_col = 0;

box_scale = 1.25;
highlight_scale = sprite_get_width(spr_hint_box) / sprite_get_width(spr_hint_highlight) * 1.4;
icon_scale_relative = 0.85;
hint_grid_x = 100;
hint_grid_y = 80;
hint_grid_row_spacing = 62;
hint_grid_col_spacing = 70;
hint_text_scale = 0.3;
hint_text_max_width = 1500;
hint_text_menu_max_width = 750;
hint_text_padding = 10;
hint_scale_x = hint_text_max_width / sprite_get_width(spr_hint);
hint_menu_scale_x = hint_text_menu_max_width / sprite_get_width(spr_hint);

default_pixel_font = font_add("joystix monospace.otf", 32, false, false, 32, 128);

spr_hint_height = sprite_get_height(spr_hint);
spr_hint_width = sprite_get_width(spr_hint);

box_width = 15;

function get_hint(row, col) {
	var row_clamped = clamp(row, 0, array_length(hint_grid) - 1);
	var col_clamped = clamp(col, 0, array_length(hint_grid[row_clamped]) - 1);
	return global.hints[$hint_grid[row_clamped][col_clamped]];
}

function draw_hint_icon(row, col, origin_x, origin_y) {
	var hint = get_hint(row, col);
	if (!hint.found) {
		return;
	}
	var icon_width = sprite_get_width(hint.sprite);
	var icon_scale = box_width / icon_width;
	draw_sprite_ext(hint.sprite, -1, origin_x + col * hint_grid_col_spacing, origin_y + row * hint_grid_row_spacing, icon_scale * ui_scale, icon_scale * ui_scale, 0, c_white, 1);
}

function draw_hint_mark(row, col, origin_x, origin_y) {
	var hint = get_hint(row, col);
	if (!hint.utilized) {
		return;
	}
	draw_sprite_ext(IWB_UI_hint_box_column_mark, -1, origin_x + col * hint_grid_col_spacing, origin_y + row * hint_grid_row_spacing, ui_scale, ui_scale, 0, c_white, 1);
}

function draw_hint(text, origin_x, origin_y) {
	draw_set_font(default_pixel_font);
	draw_set_colour(#55402c);
	var text_height = string_height_ext(text, -1, hint_text_menu_max_width) * hint_text_scale;
	var hint_scale_y = (text_height + hint_text_padding) / spr_hint_height * 1.1;
	var x_offset = spr_hint_width / 2 * hint_menu_scale_x / ui_scale;
	draw_sprite_ext(spr_hint, -1, origin_x - x_offset, origin_y - text_height - hint_text_padding, hint_menu_scale_x / ui_scale, hint_scale_y, 0, c_white, 1);	
	draw_text_ext_transformed(origin_x + hint_text_padding - x_offset, origin_y - text_height - hint_text_padding, text, -1, hint_text_menu_max_width, hint_text_scale, hint_text_scale, 0);
}

ephemeral_text = "";
ephemeral_duration = 0;

function draw_hint_emphemeral(text, duration) {
	ephemeral_text = text;
	ephemeral_duration = duration * room_speed;
}
