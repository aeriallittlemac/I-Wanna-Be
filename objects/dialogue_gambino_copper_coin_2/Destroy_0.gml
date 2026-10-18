event_inherited();
//item_acquired(global.item_list.copper_coin);
hint_use(global.hints.gambinos_promise);
global.game_time = "12:00 pm";
//we can have something happen in between
global.game_time = "1:00 pm"

var inst = instance_create_depth(0, 0, 0, obj_time_skip);
with inst{
	target_rm = school_1F;
	target_x = 1165;
	target_y = 107;
	cutscene = cutscene_tuesday_before_sewing_club;
	skip_message = "After \nlab...";
}
audio_stop_all();
audio_play_sound(sfx_school_bell, 1, false);

//teleport_npc(obj_wei, school_1F, 1115, 107, RIGHT);
QuestCompleted(global.quest_list.copper_coin);
NewQuest(global.quest_list.sewing_club_quest, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);