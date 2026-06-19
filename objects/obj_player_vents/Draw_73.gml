// Draw End event
if (!surface_exists(lightSurface)) {
    lightSurface = surface_create(room_width, room_height);
}

surface_set_target(lightSurface);
draw_clear_alpha(c_black, 1);

gpu_set_blendmode(bm_subtract);

var scale = (light_radius * 2) / sprite_get_width(spr_light_gradient);
draw_sprite_ext(spr_light_gradient, 0, x, y, scale, scale, 0, c_white, 1);

gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface(lightSurface, 0, 0);