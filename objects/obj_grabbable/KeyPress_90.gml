

if dist_to_player < interact_range &&!global.cutscene&&!global.in_dialogue{
	
if player_relative_pos == "LEFT" { obj_player.face = RIGHT }
if player_relative_pos == "RIGHT" { obj_player.face = LEFT }
if player_relative_pos == "UP" { obj_player.face = DOWN }
if player_relative_pos == "DOWN" { obj_player.face = UP }

player_grab_x_offset = x - obj_player.x;
	player_grab_y_offset = y - obj_player.y;
	grabbed = true;
	show_debug_message("grabbed!");
}