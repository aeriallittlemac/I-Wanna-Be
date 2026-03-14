right_key = keyboard_check(MOVE_RIGHT);
left_key = keyboard_check(MOVE_LEFT);
up_key = keyboard_check(MOVE_UP);
down_key = keyboard_check(MOVE_DOWN);
xspeed = (right_key - left_key)*mouse_x_speed * !global.in_dialogue;
yspeed = (down_key - up_key)*mouse_y_speed * !global.in_dialogue;
x += xspeed;
y += yspeed;