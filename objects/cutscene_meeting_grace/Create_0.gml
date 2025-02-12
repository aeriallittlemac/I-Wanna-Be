audio_sound_gain(school_night, 0, 1000);
obj_npc_manager.npcs[1].initial_animation = noone;
npc_animate(obj_grace, spr_grace_down);
game_wait(1);
game_NewDialogue(dialogue_didnt_see_you_there);