function clear_c_sequences(){
	obj_player.c_sequences = array_create(0);
}
function move_to_pos(xspeed, yspeed, x1,y1){
	array_push(obj_player.c_target_x, x1);
	array_push(obj_player.c_target_y, y1);
	array_push(obj_player.c_xspeed, xspeed);
	array_push(obj_player.c_yspeed, yspeed);
	array_push(obj_player.c_sequences, "move");
}

function wait(seconds){
	array_push(obj_player.c_timer, seconds*room_speed);
	array_push(obj_player.c_sequences, "wait");
}

function teleport_player(target_x, target_y, target_rm){
	var inst = instance_create_depth(0,0,-9999,obj_transition);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	if argument_count > 3{
		inst.start_cutscene = argument[3];
	} 
}

function player_dialogue(dialogue){
	array_push(obj_player.c_dialogue, dialogue);
	array_push(obj_player.c_sequences, "dialogue");
}