instance_destroy(obj_stealth_mission_border);
instance_destroy(stealth_UI_objective);
instance_destroy(obj_map_pin);
instance_destroy(obj_stealth_mission_bars);
game_camera_change_settings(obj_player, 1);
game_wait(0.8);
game_camera_change_settings(obj_player, -1);
QuestCompleted(global.quest_list.get_padlock);
npc_move_to_pos(obj_job, 1, 0, 1590, obj_job.y);
teleport_npc(obj_job, noone, 0, 0, DOWN);
npc_move_to_pos(obj_frenchie, 1, 0, 1590, obj_frenchie.y);
teleport_npc(obj_frenchie, noone, 0, 0, DOWN);
item_acquired(global.item_list.padlock);
NewQuest(global.quest_list.get_key_back_to_drake, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
global.storylines.Gambinos_Missions.Day_One.acquired_padlock = true;
if instance_exists(INST_STEALTH_ZONE){
	instance_destroy(INST_STEALTH_ZONE)
}