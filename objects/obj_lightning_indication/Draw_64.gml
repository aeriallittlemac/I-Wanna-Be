draw_sprite_ext(sprite_index, lightning_index, x*minimap_scale, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1);
if lightning_index >= image_number{
	instance_destroy(self);
}