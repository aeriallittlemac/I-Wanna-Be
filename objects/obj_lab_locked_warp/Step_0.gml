locked = instance_exists(obj_drake);
if place_meeting(x,y,obj_player) && !instance_exists(obj_transition) && !locked{
	if global.day = 5{
		obj_mcronald.sprite[DOWN] = spr_mcronald_down_hooded
		teleport_npc(obj_mcronald, school_B1, 1110, 100, DOWN);
	}
	var inst = instance_create_depth(0,0,-9999,obj_transition);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	//inst.facing = facing;
	
	if (variable_instance_exists(self, "callback")) {
		callback();
	}
}
