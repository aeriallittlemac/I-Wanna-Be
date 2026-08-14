if instance_exists(obj_lightning_player){
instance_create_depth(obj_lightning_player.x+random_range(-random_x_deviance, random_x_deviance), obj_lightning_player.y+random_range(-random_y_deviance, random_y_deviance), depth-2, obj_lightning_indication)
strikes_remaining --;
if strikes_remaining > 0{
alarm[5] = delay_in_between_strikes;
}
}