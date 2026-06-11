alpha-=alpha_change
if alpha > 0{
	alarm[1] = 1;
}
else{
	instance_destroy(self);
}