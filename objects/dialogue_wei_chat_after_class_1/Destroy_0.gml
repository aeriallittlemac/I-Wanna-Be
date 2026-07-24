event_inherited();
item_acquired(global.item_list.wooden_cross)
game_wait(3);
npc_move_to_pos(obj_wei, 1, 0, obj_player.x-150, obj_wei.y);
teleport_npc(obj_wei, noone, 0, 0, DOWN);
game_NewCutscene(cutscene_wei_chat_after_class_2);
global.game_time = "1:00 pm"
teleport_npc(obj_mei, school_1F, 870, 105, DOWN);
instance_activate_object(inst_MEI_WARNING);