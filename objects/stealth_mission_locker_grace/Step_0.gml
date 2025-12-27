if array_length(obj_grace.sequences) < 2{
	npc_move_to_pos(obj_grace, 1, 0, 1140, obj_grace.y);
	npc_wait(obj_grace, 0.3);
	npc_move_to_pos(obj_grace, 1, 0, 1225, obj_grace.y);
	npc_move_to_pos(obj_grace, 1, 0, 1224, obj_grace.y);
	npc_wait(obj_grace, 0.3);
	//npc_speech_bubble(obj_grace, speech_grace_locker)
}
if obj_player.x > 1224{
	instance_destroy(self);
}
player_hidden = false;
for(var i=0; i<3; i++){
	if (obj_player.x > obj_welcome_table.bbox_left && obj_player.x < obj_welcome_table.bbox_right) ||
	(obj_player.x > covers[i].bbox_left && obj_player.x < covers[i].bbox_right && obj_player.y > 140){
		player_hidden = true;
	}
}
if obj_grace.x < obj_player.x + 135 && obj_grace.x > obj_player.x - 135{
	if obj_grace.x > obj_player.x{
		if !player_hidden && obj_grace.sprite_index == obj_grace.sprite[LEFT]{
			stealth_UI_objective.display_text = "CAUGHT!"
			global.cutscene = true;
			alarm[0] = 15;
		}
	}
	else{
		if !player_hidden && obj_grace.face = RIGHT{
			stealth_UI_objective.display_text = "CAUGHT!"
			global.cutscene = true;
			alarm[0] = 15;
		}
	}
}