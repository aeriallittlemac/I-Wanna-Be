event_inherited();
audio_stop_all();
audio_play_sound(sfx_pop, 1, false);
//teleport_npc(obj_mcronald, school_main_classroom, 130, 112, DOWN);
instance_create_depth(0,0,0,obj_mcronald_lighting);
//game_wait(1);
game_NewDialogue(dialogue_meeting_the_boys_1);