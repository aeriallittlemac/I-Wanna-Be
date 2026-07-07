if (active_shader == noone || !composite) {
	exit;
}

if (surface_exists(surface_a)) {
	surface_free(surface_a);
}
if (surface_exists(surface_b)) {
	surface_free(surface_b);
}
