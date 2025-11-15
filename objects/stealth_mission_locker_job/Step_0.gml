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