event_inherited();
teleport_npc(obj_mcronald, school_main_classroom, (obj_wei.x + obj_mei.x)/2, 100, DOWN);
obj_player.x = 144;
obj_player.y = 130;
obj_player.sprite_index = obj_player.sprite[UP];
obj_player.face = UP;
obj_player.
audio_stop_all();
audio_play_sound(sfx_pop, 1, false);
game_wait(2);
game_NewDialogue(dialogue_wednesday_classroom_mcronald_interjection)