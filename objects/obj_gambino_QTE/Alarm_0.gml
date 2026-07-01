if instance_exists(obj_lightning_player){
alarm[0] = spawn_interval*room_speed;
instance_create_depth(obj_lightning_player.x, obj_lightning_player.y, depth-2, obj_lightning)
for(var i=0; i< strikes_num-1; i++){
instance_create_depth(obj_lightning_player.x+random_range(-random_x_deviance, random_x_deviance), obj_lightning_player.y+random_range(-random_y_deviance, random_y_deviance), depth-2, obj_lightning)
}
}

