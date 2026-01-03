global.in_hints = false;

global.hints = {
	morning: {
		sprite: spr_mrchen_icon, 
		text: "Studies have found that exposure to peanuts at an early age can reduce the chance of developing peanut allergies.", 
		found: false, 
		save_name: "Morning"
	}, 
	after_first_class: {
		sprite: spr_wei_icon, 
		text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 
		found: false, 
		save_name: "After First Class"
	}, 
	after_lunch: {
		sprite: spr_grace_default, 
		text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 
		found: false, 
		save_name: "After Lunch"
	}, 
	after_club: {
		sprite: spr_PBnJ_plate_2, 
		text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 
		found: false, 
		save_name: "After Club"
	}, 
	cretaceous: {
		sprite: spr_grace_demonic, 
		text: "The end-Cretaceous mass extinction occurred about 65 million years ago.", 
		found: false, 
		save_name: "Cretaceous"
	}, 
	beef: {
		sprite: spr_hot_pocket, 
		text: "A recall for the \"philly cheesesteak\" variety of Hot Pockets was issued due to concern of beef contamination caused by a supplier.", 
		found: false, 
		save_name: "Chicken Katsu"
	},
	yup: {
		sprite: spr_grace_demonic, 
		text: "The end-Cretaceous mass extinction occurred about 65 million years ago.", 
		found: false, 
		save_name: "Cretaceous"
	}, 
	uhhuh: {
		sprite: spr_hot_pocket, 
		text: "A recall for the \"philly cheesesteak\" variety of Hot Pockets was issued due to concern of beef contamination caused by a supplier.", 
		found: false, 
		save_name: "Chicken Katsu"
	},
	yeh: {
		sprite: spr_grace_demonic, 
		text: "The end-Cretaceous mass extinction occurred about 65 million years ago.", 
		found: false, 
		save_name: "Cretaceous"
	}, 
	bi: {
		sprite: spr_hot_pocket, 
		text: "A recall for the \"philly cheesesteak\" variety of Hot Pockets was issued due to concern of beef contamination caused by a supplier.", 
		found: false, 
		save_name: "Chicken Katsu"
	}
	
};

is_choosing_restore = false;

hint_grid = [
	["morning", "after_first_class", "after_lunch", "after_club"], 
	["cretaceous", "beef"],
	["yup", "uhhuh"],
	["yeh", "bi"]
];

focus_row = 0;
focus_col = 0;

box_scale = 1.25;
highlight_scale = sprite_get_width(spr_hint_box) / sprite_get_width(spr_hint_highlight) * 1.4;
icon_scale_relative = 0.85;
hint_grid_x = 80;
hint_grid_y = 100;
hint_grid_spacing = 80;
hint_text_scale = 0.3;
hint_text_max_width = 1500;
hint_text_padding = 10;
hint_scale_x = hint_text_max_width / sprite_get_width(spr_hint);

default_pixel_font = font_add("joystix monospace.otf", 32, false, false, 32, 128);

function draw_hint(text) {
	draw_set_font(default_pixel_font);
	draw_set_colour(#55402c);
	var text_height = string_height_ext(text, -1, hint_text_max_width) * hint_text_scale;
	var hint_scale_y = (text_height + hint_text_padding) / sprite_get_height(spr_hint) * 1.1;
	draw_sprite_ext(spr_hint, -1, 0, viewport_height - text_height - hint_text_padding, hint_scale_x / ui_scale, hint_scale_y, 0, c_white, 1);	
	draw_text_ext_transformed(hint_text_padding, viewport_height - text_height - hint_text_padding, text, -1, hint_text_max_width, hint_text_scale, hint_text_scale, 0);
}

ephemeral_text = "";
ephemeral_duration = 0;

function draw_hint_emphemeral(text, duration) {
	ephemeral_text = text;
	ephemeral_duration = duration * room_speed;
}
