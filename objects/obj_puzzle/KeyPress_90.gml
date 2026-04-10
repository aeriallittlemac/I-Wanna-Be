if piece_index == obj_brooklyn_QTE_new.select_piece_index{
	piece_grabbed = !piece_grabbed;
	obj_brooklyn_QTE_new.grabbing = piece_grabbed;	
	if !piece_grabbed && obj_brooklyn_QTE_new.displayed_missing[puzzle_index]{
	var row = floor(puzzle_index/obj_brooklyn_QTE_new.puzzle_row_num);
	var col = puzzle_index%obj_brooklyn_QTE_new.puzzle_row_num;
	var snap_target_x = (obj_brooklyn_QTE_new.puzzle_x + col*obj_brooklyn_QTE_new.piece_size)/minimap_scale;
	var snap_target_y = (obj_brooklyn_QTE_new.puzzle_y + row*obj_brooklyn_QTE_new.piece_size)/minimap_scale;
	show_debug_message("row"+ string(row));
	show_debug_message("col"+ string(col));
	if sqr(x-snap_target_x) + sqr(y-snap_target_y) < 160{
	x = snap_target_x;
	y = snap_target_y;
	
	if obj_brooklyn_QTE_new.missing_words <= 1 && alarm[0]<0{
		//alarm[0] = room_speed*0.2;
		instance_destroy(obj_puzzle);
	}
	else if piece_index>obj_brooklyn_QTE_new.missing_words-2{
		obj_brooklyn_QTE_new.select_piece_index--
	}
		for (var i = 0; i < instance_number(obj_puzzle); i++)
		{

			if instance_find(obj_puzzle,i).piece_index > piece_index{
				instance_find(obj_puzzle,i).piece_index--;
			}
		}
		piece_index = -1;
		obj_brooklyn_QTE_new.missing_words --;
	}
	
	
}
}
