right_key = keyboard_check(MOVE_RIGHT);
left_key = keyboard_check(MOVE_LEFT);
up_key = keyboard_check(MOVE_UP);
down_key = keyboard_check(MOVE_DOWN);

x += (right_key-left_key)*player_speed;
y += (down_key-up_key)*player_speed;

if place_meeting(x, y, obj_snake_body){
	teleport_player(obj_player.x, obj_player.y, obj_snake.previous_room, obj_snake.lose_cutscene);
	show_debug_message("player died");
	instance_destroy(self);
	
}