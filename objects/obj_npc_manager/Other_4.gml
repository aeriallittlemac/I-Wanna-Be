for(var i=0; i < array_length(npcs); i++){
	if npcs[i].cur_room != room{
		instance_deactivate_object(npcs[i].object);
	}
}




