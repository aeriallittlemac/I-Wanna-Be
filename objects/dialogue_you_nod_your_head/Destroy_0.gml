game_wait((obj_grace.x - 300)/room_speed + 1.5 + 1);
npc_move_to_pos(obj_grace, 1, 0, 300, obj_grace.y);
npc_wait(obj_grace, 1.5);
npc_animate(obj_grace, spr_grace_side_shaded);
npc_wait(obj_grace, 1);
npc_dialogue(obj_grace, dialogue_grace_threat);
