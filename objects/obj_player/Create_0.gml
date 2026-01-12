global.cutscene = false
player_frozen = false;
x_lock = 0;

xspeed = 0;
yspeed = 0;
move_speed = 1;
run_speed_multiplier = 2;
previous_speed = 0;
previous_y_pos = STANDARD_Y_POS;
previous_x_pos = x;
change_scale = 0.008;
sprite[RIGHT] = spr_player_right;
sprite[UP] = spr_player_up;
sprite[LEFT] = spr_player_left;
sprite[DOWN] = spr_player_down;

face = DOWN

c_sequences = array_create(0);
c_xspeed = array_create(0);
c_yspeed = array_create(0);
c_target_x = array_create(0);
c_target_y = array_create(0);
c_dialogue = array_create(0);
filters = array_create(0);
c_previous_xspeed = 0;
c_previous_yspeed = 0;
c_timer = array_create(0);
skip_c_sequence = false;
classroom_mode = false;

hidden = false;