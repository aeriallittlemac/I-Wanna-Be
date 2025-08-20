if double_down{
	AddRelationshipPoints(obj_grace,5);
	game_wait(1);
	game_NewDialogue(dialogue_didnt_see_you_there_lol_3);
}
else{
npc_move_to_pos(obj_grace, 1, 0, 89, obj_grace.y);
game_camera_change_settings(obj_player, 1);
game_wait(3);
game_camera_change_settings(obj_player, -1);
teleport_npc(obj_grace, noone, 0, 0, DOWN);
audio_sound_gain(grace_debut_theme, 0, 2400);
audio_sound_gain(school_night, 1, 3200);
NewQuest(global.quest_list.go_back_to_sleep, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
}