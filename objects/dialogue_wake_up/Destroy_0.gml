audio_play_sound(sfx_stomach_growl_2, 1, false);
var inst = instance_create_depth(obj_player.x + 15, obj_player.y - 45, OBJ_MAX_DEPTH, obj_ghost_text)
with inst{
	default_pixel_font = font_add("joystix monospace.otf", 11*2, false, false, 32, 128);
	overlay_text = "Growwwl";
	angle = -45;
	timer = 0;
	fade_speed = 0.6;
}
game_wait(2);
global.player_sleeping = false;
QuestCompleted(global.quest_list.enter_dorm);
teleport_npc(obj_grace, school_3F, 396, 109, DOWN);
AddInstanceToActivate(inst_3D85AE7E);
AddInstanceToActivate(inst_10061687);
AddInstanceToActivate(inst_60CDF728);
AddInstanceToActivate(inst_53414DC0);
AddInstanceToActivate(inst_1A7BF3E9);
game_NewDialogue(dialogue_hunger);
//array_pop(obj_minimap.inv);

