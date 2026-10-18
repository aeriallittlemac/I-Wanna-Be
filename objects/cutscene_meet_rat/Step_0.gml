if(instance_exists(obj_player_vents)){
	if (obj_player_vents.x < 425  && obj_player_vents.y > 730){
		instance_destroy(self);
	}
}