for(var i = 0; i < array_length(npcs); i++){
	if !instance_exists(npcs[i].object){
		//show_debug_message(npcs[i].title);
		instance_create_depth(-9999, -9999, 0, npcs[i].object);
	}
	else{
		//show_debug_message(npcs[i].first_name);
	}
}
for(var i=0; i < array_length(npcs); i++){
	if npcs[i].cur_room != room{
		instance_deactivate_object(npcs[i].object);
	}
}




