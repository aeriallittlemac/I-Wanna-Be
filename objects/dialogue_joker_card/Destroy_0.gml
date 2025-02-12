item_remove(global.item_list.joker_card);
item_acquired(global.item_list.hot_pocket);
//mcronald laughing animation
npc_move_to_pos(obj_mcronald, 1, 0, obj_player.x - 200, obj_mcronald.y);
teleport_npc(obj_mcronald, noone, 0, 0, DOWN);
game_wait(3);
game_NewDialogue(dialogue_mcronald_debut_4)