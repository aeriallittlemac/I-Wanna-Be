game_camera_change_settings(obj_player, -1);
teleport_npc(obj_gambino, school_gambinos_room, 230, 130, RIGHT);
NewDialogue(cutscene_gambinos_room_setup);
//global.QTE = false;
teleport_player(24, 124, school_gambinos_room);
//audio_sound_gain(qte_bgm, 0, 1000);


//global.storylines.Lab.Day_Three.talked_to.job = true
//	audio_sound_gain(lab_theme, 0, 1000);
//	set_QTE_bgm(qte_bgm);
//	audio_sound_gain(qte_bgm, 0, 0);
//	audio_sound_gain(qte_bgm, 0.4, 1000);
//	mission_lighting();
//	NewQuest(global.quest_list.copper_coin, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);