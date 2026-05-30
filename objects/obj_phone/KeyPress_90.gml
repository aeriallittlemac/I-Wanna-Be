if player_facing_self && !global.cutscene && 
!global.in_dialogue && entityActivateScript != -1&&!global.in_slideshow && !instance_exists(obj_rhythm_game_new){
	script_execute(entityActivateScript, entityActivateArg);
	show_debug_message(self.id);
	show_debug_message(possibility);
	show_debug_message(string(A)+","+string(C));
	show_debug_message(string(B)+","+string(D));
}
//show_debug_message(string(O)+","+string(M));