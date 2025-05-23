image_xscale += fx_enlarge_speed;
image_yscale += fx_enlarge_speed;
image_alpha -= fx_fade_speed;
if image_alpha <= 0{
	instance_destroy(self);
}