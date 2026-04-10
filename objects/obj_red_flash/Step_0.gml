tint_alpha += tint_change;
if (tint_alpha>=max_tint){
	tint_change = -abs(tint_change);
}
if (tint_alpha < -0.1){
	instance_destroy(self);
}