depth = TEXTBOX_DEPTH
school_hall = true;
global.quest_list = {

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
	
	first_class : {
		description : "Go take your first class in the morning",
		icon: spr_main_quest_icon,
		quest_room : school_1F,
		quest_room_width : 1620,
		//1620 is default
		quest_x : 1080,
		quest_y : 95,
	},
	
	sewing_club : {
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
	
	
	
}
map_visible = false;
rooms = array_create(0);
array_push(rooms, school_B1);
array_push(rooms, school_1F);
array_push(rooms, school_2F);
array_push(rooms, school_3F);
inv = array_create(0);
//array_push(inv,global.quest_list.enter_dorm);