
event_inherited();
if image_index == 1 && !door_open{
	door_open = true;
	instance_create_depth(32, 107, 0, obj_hooded_figure_1);
	game_wait(1);
	npc_move_to_pos(obj_hooded_figure_1, 1, 0, 125, obj_hooded_figure_1.y);
	game_change_image_index(obj_diamondwood_high_bathroom_door, 0);
	npc_move_to_pos(obj_hooded_figure_1, 1, 0, 124, obj_hooded_figure_1.y);
	npc_wait(obj_hooded_figure_1, 0.4);
	npc_move_to_pos(obj_hooded_figure_1, 1, 0, 125, obj_hooded_figure_1.y);
	npc_wait(obj_hooded_figure_1, 0.4);
	npc_move_to_pos(obj_hooded_figure_1, 1, 0, 124, obj_hooded_figure_1.y);
	npc_wait(obj_hooded_figure_1, 0.4);
	npc_move_to_pos(obj_hooded_figure_1, 1, 0, 125, obj_hooded_figure_1.y);
	npc_wait(obj_hooded_figure_1, 1.6);
	npc_dialogue(obj_hooded_figure_1, dialogue_you_got_the_goods);
}

