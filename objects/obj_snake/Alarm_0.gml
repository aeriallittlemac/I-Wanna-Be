var inst = instance_create_depth(x,y, depth, obj_snake_body)
inst.image_xscale = image_xscale;
inst.image_yscale = image_yscale;
inst.image_angle = phy_rotation;
array_push(snake_body_parts, inst);
if array_length(snake_body_parts) > snake_max_length{
	instance_destroy(snake_body_parts[0]);
	array_delete(snake_body_parts, 0, 1);
}

alarm[0] = snake_interval;