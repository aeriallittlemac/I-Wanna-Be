force = 0.5;
snake_max_length = 16;
snake_interval = 10;
snake_body_parts = array_create(0);
items = array_create(0);
max_item_count = 5;
alarm[0] = snake_interval;
fx = 0;
fy = 0;
velocityXCap = 2; 
velocityYCap = 2;
left_border_x = 30;
right_border_x = 240;
top_border_y = 30;
bottom_border_y = 122;
bounce = 0.1;
item_index = 0;
previous_room = noone;
win_cutscene = noone;
lose_cutscene = noone;
item_despawn_time = 4.5;
snake_start = false;
alarm[2] = room_speed*2;




alarm[1] = 1;
