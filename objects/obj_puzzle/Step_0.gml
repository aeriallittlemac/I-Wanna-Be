
right_key = keyboard_check(MOVE_RIGHT);
left_key = keyboard_check(MOVE_LEFT);
up_key = keyboard_check(MOVE_UP);
down_key = keyboard_check(MOVE_DOWN);
if piece_grabbed{
x+= (right_key - left_key)*move_speed*delta_time/1000000;
y+= (down_key - up_key)*move_speed*delta_time/1000000;
}