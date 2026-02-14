audio_stop_sound(classroom);
var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
with inst{
	default_pixel_font = font_add("joystix monospace.otf", 45*2, false, false, 32, 128);
	overlay_text = "Hours later\n(Lunch time)";
	angle = 0;
	timer = 0;
	fade_speed = 0.4;
}
global.cutscene = false;
global.game_time = "11:00 pm";
NewQuest(global.quest_list.band_practice, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
teleport_npc(obj_frenchie, school_2F, 375, 135, DOWN);
teleport_npc(obj_mcronald, school_2F, 450, 150, DOWN);
teleport_npc(obj_wei, school_2F, 350, 185, UP);
obj_npc_manager.npcs[0].initial_animation = spr_wei_rapping_1;
obj_npc_manager.npcs[5].initial_animation = spr_mcronald_keyboard_1;
obj_npc_manager.npcs[12].initial_animation = spr_frenchie_guitar_1;
global.storylines.Main_Classroom.Day_Four.quiz_pass = true;
teleport_player(1140, 120, school_1F);