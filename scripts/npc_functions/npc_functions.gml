function npc_clear_sequences(npc){
	npc.sequences = array_create(0);
}

function npc_move_to_pos(npc, xspeed, yspeed, x1,y1){
	array_push(npc.target_x, x1);
	array_push(npc.target_y, y1);
	array_push(npc.xspeed, xspeed);
	array_push(npc.yspeed, yspeed);
	array_push(npc.sequences, "move");
	if argument_count > 5{
		global.cutscene = argument[5];
	}
}

function teleport_npc(npc, rm, targetx, targety, facing){
	var activate_first = false;
	if !instance_exists(npc){
		activate_first = true;
	}
	for(var i=0; i < array_length(obj_npc_manager.npcs); i++){
		if obj_npc_manager.npcs[i].object == npc{
			if activate_first{
				instance_activate_object(obj_npc_manager.npcs[i].object);
			}
			obj_npc_manager.npcs[i].cur_room = rm;
			obj_npc_manager.npcs[i].initial_x = targetx;
			obj_npc_manager.npcs[i].initial_y = targety;
			obj_npc_manager.npcs[i].initial_face = facing;
		}
	}
	array_push(npc.sequences, "teleport");
	if argument_count > 5{
		global.cutscene = argument[5];
	}
	
}

function npc_wait(npc, seconds){
	array_push(npc.timer, seconds*room_speed);
	array_push(npc.sequences, "wait");
	if argument_count > 2{
		global.cutscene = argument[2];
	}
}

function npc_dialogue(npc, d){
	array_push(npc.npc_dialogues, d);
	array_push(npc.sequences, "dialogue");
}

function npc_play_sfx(npc, sfx){
	array_push(npc.sfx, sfx);
	array_push(npc.sequences, "play_sfx");
}

function npc_animate(npc, spr){
	array_push(npc.animation, spr);
	array_push(npc.sequences, "animate");
}
