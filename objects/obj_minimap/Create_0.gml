y = 2;
show_debug_message("Minimap y:");
show_debug_message(y);
depth = TEXTBOX_DEPTH
school_hall = true;
text_x_pos = 62.5
text_y_pos = 7

single_floor_margin = 8;
multiple_floor_margin = 15;

quest_arrow_y = 2;

global.quest_list = {
	//day 1
	enter_dorm : {
		description : "Check out your dorm room",
		icon: spr_main_quest_icon,
		quest_room : school_2F,
		quest_room_width : 810,
		//1620 is default
		quest_x : 650,
		quest_y : 104,
	},
	
	midnight_snack : {
		description : "Go grab a snack from the kitchen",
		icon: spr_main_quest_icon,
		quest_room : school_3F,
		quest_room_width : 1080,
		//1620 is default
		quest_x : 513,
		quest_y : 114,
	},
	
	go_back_to_sleep : {
		description : "Go back to sleep",
		icon: spr_main_quest_icon,
		quest_room : school_2F,
		quest_room_width : 810,
		//1620 is default
		quest_x : 650,
		quest_y : 104,
	},
	
	//day 2
	
	first_class : {
		description : "Go take your first class",
		icon: spr_main_quest_icon,
		quest_room : school_1F,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1080,
		quest_y : 95,
	},
	
	sewing_club_quest : {
		description : "Go meet the sewing club",
		icon: spr_main_quest_icon,
		quest_room : school_1F,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 860,
		quest_y : 95,
	},
	go_take_a_nap : {
		description : "Go back to your dorm to take a nap.",
		icon: spr_main_quest_icon,
		quest_room : school_2F,
		quest_room_width : 810,
		//1620 is default
		quest_x : 650,
		quest_y : 104,
	},
	hot_pocket : {
		description : "Microwave your hot pocket",
		icon: spr_main_quest_icon,
		quest_room : school_3F,
		quest_room_width : 1080,
		//1620 is default
		quest_x : 513,
		quest_y : 114,
	},
	help_grace : {
		description : "Help Grace find her contact lens",
		icon: spr_main_quest_icon,
		quest_room : school_1F,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 144,
		quest_y : 121,
	},
	find_drake : {
		description : "Find Drake",
		icon: spr_main_quest_icon,
		quest_room : school_B1,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 215,
		quest_y : 104,
	},
	get_padlock : {
		description : "Get padlock",
		icon: spr_main_quest_icon,
		quest_room : school_1F,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1330,
		quest_y : 104,
	},
	back_to_your_room : {
		description : "Go back to your room",
		icon: spr_main_quest_icon,
		quest_room : school_2F,
		quest_room_width : 810,
		//1620 is default
		quest_x : 650,
		quest_y : 104,
	},
	
	
	
}
map_visible = false;
rooms = array_create(0);
array_push(rooms, school_B1);
array_push(rooms, school_1F);
array_push(rooms, school_2F);
array_push(rooms, school_3F);
inv = array_create(0);

//
global.storylines = {
	Mechanics_Introduced : {
		redo: false,
		pause_menu: false,
		pamphlet: false,
		pamphlet_finished_reading: false,
		night_no_drums: false,
	},
	Beatmaps : {
		Day_Two : {
		mei_first_meeting: false,
		date_grace_truth: false,
		},
	},
	Main_Classroom : {
		Day_Two : {
		papers_handed_out: 0,
			papers_given:{
				wei: false,
				grace: false,
				brooklyn: false,
				drake: false,
				mei: false,
				mcronald: false,
				job: false,
			},
		},
	},
	Sewing_Club : {
		hard_on: false,
	},
	
	Band : {
		First_song : {
			Frenchies_guitar: false,
			Weis_vocals: false,
		},
	},
	
	Grace : {
		day_one_dare: false,
		truth_or_dare_confession: false,
	},
	
	
	
}

global.hottest_rumor = "";