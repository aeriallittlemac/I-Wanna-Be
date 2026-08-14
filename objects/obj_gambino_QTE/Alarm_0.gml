if instance_exists(obj_lightning_player){
alarm[0] = spawn_interval*room_speed;
instance_create_depth(obj_lightning_player.x, obj_lightning_player.y, depth-2, obj_lightning_indication)
strikes_remaining = strikes_num;
alarm[5] = delay_in_between_strikes;
}

