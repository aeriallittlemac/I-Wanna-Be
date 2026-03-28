destroy_stop = false;

if (instance_exists(obj_stealth_mission_border)) {
	// Prevent possible double-initialization during debugging.
	destroy_stop = true;
	instance_destroy(self);
}
