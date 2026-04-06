if obj_player.y < bbox_bottom && obj_player.y > bbox_top && obj_player.x < bbox_right && obj_player.x > bbox_left&&
!global.cutscene && 
!global.in_dialogue && !global.timed_dialogue &&!global.in_slideshow && !instance_exists(obj_rhythm_game_arrows)
&& !global.in_hints{
	NewDialogue(dialogue_object);
	if(one_time){
		instance_destroy(self);
	}
}
//show_debug_message(obj_player.y < bbox_bottom);
//show_debug_message(obj_player.y > bbox_top);
//show_debug_message(obj_player.x < bbox_right);
//show_debug_message(obj_player.x > bbox_left);