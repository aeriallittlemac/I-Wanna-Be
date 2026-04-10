if missing_words<=0 && !puzzle_finished{
	puzzle_finished = true;
	instance_create_depth(puzzle_x, puzzle_y, depth-2, puzzle_result);
	var inst = instance_create_depth(270, 80, depth-1, obj_puzzle_bullet)
	inst.bulletText = full_sentence;
}
else{
	timer -= delta_time/1000000;
	if timer <=0 && alarm[6]<-0.1{
		puzzle_finished = true;
		instance_destroy(obj_puzzle);
		alarm[6] = 1;
		alarm[4] = 1;
	}
}