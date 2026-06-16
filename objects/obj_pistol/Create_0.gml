fall_accel = 0.1;
target_y = 119;
spins = 2;
fall_speed = 0;
gun_caught = false;
var total_fall_time = sqrt((97-y)/(fall_accel*0.5));
spin_rate = spins*360/total_fall_time;