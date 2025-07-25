event_inherited();
xspeed = array_create(0);
yspeed = array_create(0);
run_speed_multiplier = 2.5;
sequences = array_create(0);
target_x = array_create(0);
target_y = array_create(0);
npc_dialogues = array_create(0);
previous_xspeed = 0;
previous_yspeed = 0;
previous_y_pos = STANDARD_Y_POS;
change_scale = 0.008;
sprite[RIGHT] = noone;
sprite[UP] = noone;
sprite[LEFT] = noone;
sprite[DOWN] = noone;
face = DOWN
player_reach = 120;
timer = array_create(0);
classroom_mode = false;
skip_sequence = false;
sfx = array_create(0);
animation = array_create(0);

if  instance_number(self.object_index) > 1{
	instance_destroy(self);
}
