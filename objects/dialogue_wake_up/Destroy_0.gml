audio_play_sound(sfx_stomach_growl_2, 1, false);
var inst = instance_create_depth(obj_player.x - 30, obj_player.y - 15, OBJ_MAX_DEPTH, obj_white_text_overlay)
with inst{
	overlay_text = "Growwwwwwwwwwwwl";
	font_size = 6;
	text_timer = 0.1;
	real_text_last_timer = audio_sound_length(sfx_stomach_growl_2) - (string_length(overlay_text)*text_timer);
	text_last_timer = real_text_last_timer * room_speed;
}
game_wait(3.5);
global.player_sleeping = false;
QuestCompleted(global.quest_list.enter_dorm);
teleport_npc(obj_grace, school_3F, 396, 119, DOWN);
AddInstanceToActivate(inst_3D85AE7E);
AddInstanceToActivate(inst_60CDF728);
AddInstanceToActivate(inst_53414DC0);
AddInstanceToActivate(inst_1A7BF3E9);
game_NewDialogue(dialogue_hunger);
//array_pop(obj_minimap.inv);

