audio_sound_gain(gambino_entrance, 0, 0);
teleport_npc(obj_mcronald, school_1F, 1000, 103, DOWN);
AddInstanceToActivate(inst_MCRONALD_DEBUT);
AddInstanceToActivate(inst_WEI_MICROWAVE);
global.cutscene = false;
global.game_time = "12:00 pm";
teleport_player(1090, 110, school_1F);


