//set_QTE_bgm(song_band_first_song)
global.day = 2;
global.night = true;
global.game_time = "8:00 pm";
AddInstanceToActivate(inst_BOBBYS_ROOM_DRUM_KIT);
move_to_pos(1, 0, 650, obj_player.y);
teleport_npc(obj_mcronald, school_bobbys_room, 193, 130, LEFT);
teleport_player(60, 120, school_bobbys_room, dialogue_wei_drum_debut_1)