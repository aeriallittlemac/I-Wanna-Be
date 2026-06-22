if instance_exists(obj_player_vents){
	if obj_player_vents.destination_reached{
		instance_destroy(self);
	}

}