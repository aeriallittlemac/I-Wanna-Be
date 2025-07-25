audio_sound_gain(school_night, 0, 1000);
obj_npc_manager.npcs[1].initial_animation = noone;
npc_animate(obj_grace, spr_grace_chew_then_freeze);
game_wait(3.7);
global.cutscene = true;