
right_key = keyboard_check(MOVE_RIGHT);
left_key = keyboard_check(MOVE_LEFT);
up_key = keyboard_check(MOVE_UP);
down_key = keyboard_check(MOVE_DOWN);
if piece_grabbed{
x+= (right_key - left_key)*move_speed*delta_time/1000000;
y+= (down_key - up_key)*move_speed*delta_time/1000000

	var row = floor(puzzle_index/obj_brooklyn_QTE_new.puzzle_row_num);
	var col = puzzle_index%obj_brooklyn_QTE_new.puzzle_row_num;
	snap_target_x = (obj_brooklyn_QTE_new.puzzle_x + col*obj_brooklyn_QTE_new.piece_size)/minimap_scale;
	snap_target_y = (obj_brooklyn_QTE_new.puzzle_y + row*obj_brooklyn_QTE_new.piece_size)/minimap_scale;

}






snapping = sqr(x-snap_target_x) + sqr(y-snap_target_y) < 160;