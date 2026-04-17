snake_target = obj_maze_player;

ai_target_x = snake_target.x;
ai_target_y = snake_target.y;

alarm[0] = 30; // refresh rate

// 4-direction system (classic snake)
DIR_RIGHT = 0;
DIR_UP    = 90;
DIR_LEFT  = 180;
DIR_DOWN  = 270;

scale_x = 1;
scale_y = 1;


snake_dir = DIR_RIGHT;

// world position (logic space = SAME as collisions)
snake_x = x;
snake_y = y;
snake_speed = 0.15
snake_total_length = 140;
snake_scale = 4;
// strip system (visual smoothing)
snake_strip_x = array_create(1, snake_x);
snake_strip_y = array_create(1, snake_y);
snake_strip_dir = array_create(1, snake_dir);
snake_strip_length = array_create(1, 32);


