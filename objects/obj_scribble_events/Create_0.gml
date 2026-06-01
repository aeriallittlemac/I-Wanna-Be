function npc_move(elem, params, idx) {
	npc_move_to_pos(asset_get_index(params[0]), real(params[1]), real(params[2]), real(params[3]), real(params[4]));
}

function player_move(elem, params, idx) {
	move_to_pos(real(params[0]), real(params[1]), real(params[2]), real(params[3]));
}

function in_dialogue_force_set(elem, params, idx) {
	global.in_dialogue = params[0] == "true";
}
