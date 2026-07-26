gif_index++;
if gif_index >= sprite_get_number(screen_gif)-1{
	instance_destroy(self);
}
alarm[0] = (screen_duration*room_speed)/sprite_get_number(screen_gif);