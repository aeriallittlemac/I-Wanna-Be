global.item_list = {
	
	dorm_keys : {
		item_name: "Dorm Keys",
		item_dialogue: dialogue_dorm_keys,

	},
	PBnJ : {
		item_name: "PB&J",
		item_dialogue: dialogue_PBnJ,
	
	},
	joker_card : {
		item_name: "joker card",
		item_dialogue: dialogue_joker_card,
	
	},
	hot_pocket : {
		item_name: "hot pocket",
		item_dialogue: dialogue_hot_pocket,

	},
	wooden_cross : {
		item_name: "wooden cross",
		item_dialogue: dialogue_cross,
	
	},
	character_pamphlet : {
		item_name: "Le Pamphlet",
		item_dialogue: obj_character_pamphlet,

	},
	graces_contact_lens : {
		item_name: "Grace's Contacts",
		item_dialogue: -1,
	
	},
	
	

}
inventory = array_create(0);

default_pixel_font = font_add("joystix monospace.otf", 32, false, false, 32, 128);
font_add_enable_aa(false);
x_border = 400;
portrait_x_border = 8;
y_border = 130;
display_text = "";
//text = ["I walk this empty street, on the boulevard of broken dreams. Where the city sleeps, and I'm the only one and I walk alone.", "My shadow's only thing that walks besides me."]
global.in_inventory = false;


setup = false;

item_pos = 0;
text_width_limit = 0;
