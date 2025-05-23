obj_npc_manager.npcs[10].initial_animation = noone;
npc_animate(obj_mei, spr_mei_shakes_brooklyn);
npc_animate(obj_brooklyn, spr_brooklyn_shaken);
audio_play_sound(sfx_girls_giggling, 1, false);
game_wait(audio_sound_length(sfx_girls_giggling)+0.1);
game_NewDialogue(dialogue_sewing_club_debut_0_1);