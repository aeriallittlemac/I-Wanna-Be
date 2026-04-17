maze_snake_speed = 40;
snake_scale = 8;
x_speed = 0;
y_speed = 0;
dir = RIGHT;
snake_length = 18;
snake_strips = array_create(1, 7);
array_push(snake_strips, 6);
array_push(snake_strips, 5);

snake_strip_dir = array_create(1, RIGHT);
array_push(snake_strip_dir, DOWN);
array_push(snake_strip_dir, LEFT);

snake_strip_x = array_create(1, x);
snake_strip_y = array_create(1, y);



map_scale = 1;