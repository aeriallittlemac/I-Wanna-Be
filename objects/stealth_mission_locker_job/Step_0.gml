player_hidden = false;
for(var i=0; i<3; i++){
	if (obj_player.x > obj_welcome_table.bbox_left && obj_player.x < obj_welcome_table.bbox_right) ||
	(obj_player.x > covers[i].bbox_left && obj_player.x < covers[i].bbox_right && obj_player.y > 140){
		player_hidden = true;
	}
}
	
	if !player_hidden && instance_exists(obj_warning_2){
		stealth_UI_objective.display_text = "CAUGHT!"
		global.cutscene = true;
		alarm[0] = 15;
	}
if alarm[1] == -1 && !player_hidden && !instance_exists(obj_warning){
	alarm[1] = frenchie_check_interval;
}
if obj_player.x > left_locker_border && obj_player.x < right_locker_border && obj_player.y < 116{
	if keyboard_check(CONFIRM_ACTION){
		locker_unlock_points--;
	}
}
if locker_unlock_points <= 0{
	instance_destroy(self);
}