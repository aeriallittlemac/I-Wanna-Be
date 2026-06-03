with (all) {
	if (id == obj_scribble) {
		continue;
	}
	
	var key = object_get_name(object_index);
	obj_scribble.layout[$key] = {
		x: x, 
		y: y, 
		width: bbox_right - bbox_left, 
		height: bbox_bottom - bbox_top
	};
}

room_goto(school_1F);
