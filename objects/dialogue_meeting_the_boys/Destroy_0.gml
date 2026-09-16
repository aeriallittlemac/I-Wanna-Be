event_inherited();
audio_play_sound(sfx_pop, 1, false);
teleport_npc(obj_mcronald, school_main_classroom, 130, 112, RIGHT);

global.sh_ambience = [1.0, 1.0, 1.0];
global.sh_bloom_bleed = [0.125, 0.125, 0.125];
global.shadow_blur_radius = 20;
global.shadow_bleed = 0.125;
global.shadow_weight = 0.0;
global.time_based_lighting = true;

game_wait(1);
game_NewDialogue(dialogue_meeting_the_boys_1);