audio_stop_all();
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
affection_bar_x = 25;
affection_bar_y = 40;
game_wait(1);
game_NewDialogue(dialogue_brooklyn_dating_sim);


glass_shatter_x = array_create(0);
glass_shatter_y = array_create(0);
array_push(glass_shatter_x, 135);
array_push(glass_shatter_y, 76);
array_push(glass_shatter_x, 100);
array_push(glass_shatter_y, 100);
array_push(glass_shatter_x, 180);
array_push(glass_shatter_y, 40);

function crack_glass(){
	if (array_length(glass_shatter_x)>0){
	instance_create_depth(glass_shatter_x[0], glass_shatter_y[0], TEXTBOX_DEPTH-1, obj_glass_shatter);
	array_delete(glass_shatter_x,0,1);
	array_delete(glass_shatter_y,0,1);
	}else{
		instance_destroy(obj_glass_shatter);
	}
}