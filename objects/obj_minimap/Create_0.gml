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
		description : "Go to the sewing club",
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
	get_key_back_to_drake : {
		description : "Get key back to Drake",
		icon: spr_main_quest_icon,
		quest_room : school_B1,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 215,
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
	//day 3
	go_to_lab : {
		description : "Go to Lab",
		icon: spr_main_quest_icon,
		quest_room : school_B1,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1130,
		quest_y : 104,
	},
	guys_potion : {
		description : "Guy's potion",
		icon: spr_side_quest_icon,
		quest_room : school_B1,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1290,
		quest_y : 104,
	},
	
	
	//NEW!
	
	copper_coin : {
		description : "Find and retrieve a copper coin(check hints!)",
		icon: spr_main_quest_icon,
		quest_room : school_lab,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1330,
		quest_y : 104,
	},
	//
	potato_battery : {
		description : "Complete the lab experiment",
		icon: spr_main_quest_icon,
		quest_room : school_lab,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1330,
		quest_y : 104,
	},
	band_practice : {
		description : "Go to band practice.",
		icon: spr_main_quest_icon,
		quest_room : school_2F,
		quest_room_width : 810,
		//1620 is default
		quest_x : 409,
		quest_y : 104,
	},
	frenchie_ghost_pt_1 : {
		description : "Find ghost dispelling device.",
		icon: spr_main_quest_icon,
		quest_room : school_B1,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1130,
		quest_y : 104,
	},
	frenchie_ghost_pt_2 : {
		description : "Dispel the ghost of frenchie",
		icon: spr_main_quest_icon,
		quest_room : school_2F,
		quest_room_width : 810,
		//1620 is default
		quest_x : 650,
		quest_y : 104,
	},
	//day 4
	
	figure_out_Brooklyns_rumor : {
		description : "Figure out what's going on.",
		icon: spr_main_quest_icon,
		quest_room : school_main_classroom,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1330,
		quest_y : 104,
	
	},
	math_quiz : {
		description : "Math quiz.",
		icon: spr_main_quest_icon,
		quest_room : school_1F,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1080,
		quest_y : 95,
	},
	//day 5
	go_fetch_bullets: {
		description : "Go find the bullets...?",
		icon: spr_main_quest_icon,
		quest_room : school_1F,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 860,
		quest_y : 95,
	},
	sewing_club_brooklyn: {
		description : "Meet up with Brooklyn at the sewing club",
		icon: spr_main_quest_icon,
		quest_room : school_1F,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1080,
		quest_y : 95,
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
	Side_Quests : {
		toast_obtained : false,
	},
	Mechanics_Introduced : {
		redo: false,
		pause_menu: false,
		pamphlet: false,
		pamphlet_finished_reading: false,
		night_no_drums: false,
		vacuum_debut : false,
		battery_in_vacuum: false,
	},
	Gambinos_Missions : {
		Day_One : {
			acquired_padlock: false,	
		}
	},
	Beatmaps : {
		Day_Two : {
		mei_first_meeting: false,
		date_grace_truth: false,
		},
	},
	Grace_Ghost : {
		tuesday: false,
	
	},
	Main_Classroom : {
		Day_Two : {
			talked_to:{
				wei: false,
				grace: false,
				brooklyn: false,
				drake: false,
				ashley: false,
				mcronald: false,
				job: false,
				mei: false,
			},
		},
		Day_Four : {
			quiz_pass: false,
			talked_to:{
				wei: false,
				mei: false,
				brooklyn: false,
				drake: false,
				ashley: false,
				mcronald: false,
			},
		},
	},
	Lab : {
		Day_Three : {
			
			talked_to:{
					grace: false,
					//brooklyn: false,
					drake: false,
					mei: false,
					mcronald: false,
					frenchie: false,
					guy: false,
					job: false,
					ashley: false,
				},
			instructions_obtained: false,
			copper_coin: false,
			potato_battery:{
				potato: false,
				zinc: false,
				copper_coin: false,
				},
				//instructions_obtained: false,
				vacuum: false,
			},
		Day_Five : {
			
			talked_to:{
					//grace: false,
					brooklyn: false,
					drake: false,
					//mei: false,
					//mcronald: false,
					//frenchie: false,
					guy: false,
					//job: false,
					ashley: false,
					wei: true
				},

			
		},
	},
	Sewing_Club : {
		Day_Two:{
			talked_to: {
				mei: false,
				grace: false,
				ashley: false,
				brooklyn: false,
			},
			
			hard_on: false,
		},
		Day_Three:{
			mei_resolves_to_talk: false,
			talked_to: {
				mei: false,
				grace: false,
				ashley: false,
				brooklyn: false,
			},
			letters_delievered:{
				grace: false,
				brooklyn: false,
			},
		},
		Day_Four:{
			talked_to: {
				mei: false,
				grace: false,
				ashley: false,
				brooklyn: false,
			},
		},
		
	},
	
	Band : {
		
		First_practice : {
			run: 1, //1, 2, 3
		},
		Frenchie_poisoned: false,
	},
	Graces_room:{
		phone: false,
		megaphone: false,
	},
	
	Grace : {
		truth_or_dare_confession: false,
		deny_rumor: false,
	},
	Frenchie : {
		talk_to_ghost_debut: false,
	},
	
	//day 5
	
	Brooklyns_quest : {
		cash_obtained : false,
		bullets_obtained : false,	
	},
	dead_bodies_checked : false,

}

global.hottest_rumor = "";
global.reputation = 50;
global.female_affinity = 50;