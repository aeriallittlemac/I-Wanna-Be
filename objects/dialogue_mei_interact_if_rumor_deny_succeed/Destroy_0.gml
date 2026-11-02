event_inherited();
//npc_move_to_pos(obj_mei, 1, 0, obj_mei.x+30, obj_mei.y);
audio_stop_all();
obj_player.x = obj_brooklyn.x - 35;
obj_player.y = obj_brooklyn.y;
game_wait(1);

game_NewDialogue(beatmap_brooklyn_tuesday_apologize_song);
//teleport_npc(obj_brooklyn, school_1F, 855 - 40, 125, DOWN);
//teleport_player(855, 125, school_1F, dialogue_mei_interact_if_rumor_deny_finding_grace);
