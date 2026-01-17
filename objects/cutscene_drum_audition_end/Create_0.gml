teleport_npc(obj_wei, school_bobbys_room, 44, 114, RIGHT)
obj_player.face = LEFT;
obj_player.sprite_index = obj_player.sprite[LEFT];
npc_move_to_pos(obj_mcronald, 1, 0, obj_mcronald.x-1, obj_mcronald.y);
game_wait(1);
game_NewDialogue(dialogue_drum_audition_end)
instance_destroy(self);