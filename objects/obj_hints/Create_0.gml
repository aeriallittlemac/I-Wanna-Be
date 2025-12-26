global.in_hints = false;

global.hints = {
	sandwich: {
		sprite: spr_PBnJ_plate, 
		text: "Studies have found that exposure to peanuts at an early age can reduce the chance of developing peanut allergies.", 
		found: false
	}, 
	lorem_ipsum: {
		sprite: spr_grace_default, 
		text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 
		found: true
	}, 
	cretaceous: {
		sprite: spr_grace_demonic, 
		text: "The end-Cretaceous mass extinction occurred about 65 million years ago.", 
		found: true
	}, 
	beef: {
		sprite: spr_hot_pocket, 
		text: "A recall for the \"philly cheesesteak\" variety of Hot Pockets was issued due to concern of beef contamination caused by a supplier.", 
		found: false
	}
};

hint_grid = [
	["sandwich", "lorem_ipsum"], 
	["cretaceous", "beef"]
];

focus_row = 0;
focus_col = 0;

box_scale = 1.25;
highlight_scale = sprite_get_width(spr_hint_box) / sprite_get_width(spr_hint_highlight) * 1.4;
icon_scale_relative = 0.85;
hint_grid_x = 100;
hint_grid_y = 100;
hint_grid_spacing = 100;
hint_text_scale = 0.3;
hint_text_max_width = 1500;
hint_text_padding = 10;
hint_scale_x = hint_text_max_width / sprite_get_width(spr_hint);

default_pixel_font = font_add("joystix monospace.otf", 32, false, false, 32, 128);

function draw_hint(text) {
	draw_set_font(default_pixel_font);
	var text_height = string_height_ext(text, -1, hint_text_max_width) * hint_text_scale;
	var hint_scale_y = (text_height + hint_text_padding) / sprite_get_height(spr_hint) * 1.1;
	draw_sprite_ext(spr_hint, -1, 0, viewport_height - text_height - hint_text_padding, hint_scale_x / ui_scale, hint_scale_y, 0, c_white, 1);	
	draw_text_ext_transformed(hint_text_padding, viewport_height - text_height - hint_text_padding, text, -1, hint_text_max_width, hint_text_scale, hint_text_scale, 0);
}

function draw_hint_emphemeral(text, duration) {
}
