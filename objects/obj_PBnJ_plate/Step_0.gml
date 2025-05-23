if instance_exists(obj_grace){
	if obj_grace.x == x{
		instance_destroy(self);
	}
}
else{
	instance_destroy(self);
}