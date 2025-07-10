draw_sprite_ext(vfx_sprite, image_index*(sprite_get_speed(vfx_sprite)/30), x*minimap_scale, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );

if  image_index*(sprite_get_speed(vfx_sprite)/30) > sprite_get_number(vfx_sprite)-1{
	instance_destroy(self);
}