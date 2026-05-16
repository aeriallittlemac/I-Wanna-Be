
	var rand_item_x = random_range(left_border_x, right_border_x);
	var rand_item_y = random_range(top_border_y, bottom_border_y);
	var inst = instance_create_depth(rand_item_x, rand_item_y, depth+1, obj_item);
	array_push(items, inst);

if array_length(items) > max_item_count{
	instance_destroy(items[0]);
	array_delete(items, 0, 1);
}
alarm[1] = room_speed*item_despawn_time;