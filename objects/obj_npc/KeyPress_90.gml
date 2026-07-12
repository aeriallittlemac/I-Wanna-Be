
if icon{
	show_debug_message(object_get_name(object_index));
	show_debug_message(hmm);
	show_debug_message(opt);
	
	setPlayerFace();
	last_x = x;
	last_y = y;
	last_face = face;
	switch(player_relative_pos){
			case "DOWN":
				move_to_pos(0,3,obj_player.x, y + 26*(image_xscale/CLASSROOM_CHARACTER_SCALE));
				move_to_pos(0,3,obj_player.x, y + 25*(image_xscale/CLASSROOM_CHARACTER_SCALE));
				npc_move_to_pos(self, 0, 1, self.x, self.y-2);
				npc_move_to_pos(self, 0, 1, self.x, self.y+1);
				//face = DOWN;
				//sprite_index = sprite[DOWN];
			
			break;
			case "UP":
				move_to_pos(0,3,obj_player.x, y - 21*(image_xscale/CLASSROOM_CHARACTER_SCALE));
				move_to_pos(0,3,obj_player.x, y - 20*(image_xscale/CLASSROOM_CHARACTER_SCALE));
				npc_move_to_pos(self, 0, 1, self.x, self.y+2);
				npc_move_to_pos(self, 0, 1, self.x, self.y-1);
				//face = UP;
				//sprite_index = sprite[UP];
			break;
			
			case "LEFT":
				move_to_pos(3,0,x - 31*(image_xscale/CLASSROOM_CHARACTER_SCALE), obj_player.y);
				move_to_pos(3,0,x - 30*(image_xscale/CLASSROOM_CHARACTER_SCALE), obj_player.y);
				npc_move_to_pos(self, 1, 0, self.x+2, self.y);
				npc_move_to_pos(self, 1, 0, self.x-1, self.y);
				//face = LEFT;
				//sprite_index = sprite[LEFT];
			break;
			
			case "RIGHT":
				move_to_pos(3,0,x + 31*(image_xscale/CLASSROOM_CHARACTER_SCALE), obj_player.y);
				move_to_pos(3,0,x + 30*(image_xscale/CLASSROOM_CHARACTER_SCALE), obj_player.y);
				npc_move_to_pos(self, 1, 0, self.x-2, self.y);
				npc_move_to_pos(self, 1, 0, self.x+1, self.y);
				//face = RIGHT;
				//sprite_index = sprite[RIGHT];
			break;
			
			
	}
	script_execute(entityActivateScript, entityActivateArg);
}