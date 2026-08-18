global.QTE = false;
global.day = 4;
//global.game_time = "3:30 pm";
audio_sound_gain(qte_bgm, 0, 1000);
//teleport_npc(obj_mei, school_sewing_club, 165, 40, DOWN);
//teleport_npc(obj_ashley, school_sewing_club, 85 + 53, 140, DOWN);
//teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_4_brooklyns_route);

//skipping the scene above for now for gameplay testing purposes
global.night = true;
global.game_time = "8:00 pm";
teleport_player(62, 117, school_bobbys_room, dialogue_wednesday_sewing_club_placeholder);