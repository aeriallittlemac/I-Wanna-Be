
if icon{
	show_debug_message(object_get_name(object_index));
	show_debug_message(hmm);
	show_debug_message(opt);
	script_execute(entityActivateScript, entityActivateArg);
	setPlayerFace();
	switch(player_relative_pos){
		
			case "DOWN":
				move_to_pos(0,3,obj_player.x, y + 26);
				move_to_pos(0,3,obj_player.x, y + 25);
				face = DOWN;
				sprite_index = sprite[DOWN];
			
			break;
			case "UP":
				move_to_pos(0,3,obj_player.x, y - 21);
				move_to_pos(0,3,obj_player.x, y - 20);
				face = UP;
				sprite_index = sprite[UP];
			break;
			
			case "LEFT":
				move_to_pos(3,0,x - 31, obj_player.y);
				move_to_pos(3,0,x - 30, obj_player.y);
				face = LEFT;
				sprite_index = sprite[LEFT];
			break;
			
			case "RIGHT":
				move_to_pos(3,0,x + 31, obj_player.y);
				move_to_pos(3,0,x + 30, obj_player.y);
				face = RIGHT;
				sprite_index = sprite[RIGHT];
			break;
			
			
	}
}