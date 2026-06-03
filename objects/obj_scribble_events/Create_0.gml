function npc_move(elem, params, idx) {
	npc_move_to_pos(asset_get_index(params[0]), real(params[1]), real(params[2]), real(params[3]), real(params[4]));
}

function player_move(elem, params, idx) {
	move_to_pos(real(params[0]), real(params[1]), real(params[2]), real(params[3]));
}

function in_dialogue_force_set(elem, params, idx) {
	global.in_dialogue = params[0] == "true";
}

function camera_shake(elem, params, idx) {
	var original_target = camera_get_view_target(view_camera[0])
	var inst = instance_create_depth(0, 0, 0, obj_camera_shake);
	inst.original_target = original_target;
}

function red_flash(elem, params, idx) {
	instance_create_depth(0, 0, OBJ_MAX_DEPTH, obj_red_flash);
}

scribble_typists_add_event("npc_move", npc_move);
scribble_typists_add_event("player_move", player_move);
scribble_typists_add_event("in_dialogue_force_set", in_dialogue_force_set);
scribble_typists_add_event("camera_shake", camera_shake);
scribble_typists_add_event("red_flash", red_flash);
