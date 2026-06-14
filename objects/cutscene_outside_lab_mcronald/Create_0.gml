audio_play_sound(sfx_surprise_fx, 1, false);
game_wait(0.7);
npc_move_to_pos(obj_mcronald, 0, 1, obj_mcronald.x, obj_mcronald.y - 1)
game_NewDialogue(dialogue_outside_lab_mcronald)