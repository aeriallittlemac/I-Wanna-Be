event_inherited();
item_acquired(global.item_list.copper_coin);
hint_use(global.hints.gambinos_promise);
global.game_time = "12:00 pm";
//we can have something happen in between
global.game_time = "1:00 pm"
var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
with inst{
	default_pixel_font = font_add("joystix monospace.otf", 45*2, false, false, 32, 128);
	overlay_text = "Hours later\n(You finished lab\nand lunch)";
	angle = 0;
	timer = 0;
	fade_speed = 0.4;
}
//teleport_npc(obj_wei, school_1F, 1115, 107, RIGHT);
teleport_player(1165, 107, school_1F);
QuestCompleted(global.quest_list.copper_coin);
NewQuest(global.quest_list.sewing_club_quest, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);