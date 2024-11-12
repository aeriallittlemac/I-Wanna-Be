spawn_cd_max = 12;
spawn_cd_min = 8;
max_hallway_monitor_red_count = 4;
incoming_list = array_create(0);
randomise();
timer = (spawn_cd_min + irandom(spawn_cd_max - spawn_cd_min)) * room_speed;
instance_create_depth(x, y + irandom(50) - 20, 0, obj_hallway_monitor_red);
enable_vets = false;


