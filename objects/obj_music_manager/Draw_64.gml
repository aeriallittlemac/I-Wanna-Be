//draw_sprite_ext(spr_audio_visualizer_bar, -1, 40, 40, minimap_scale, minimap_scale, 0, c_white,  audio_is_playing(global.bgm));
audio_playing = false;
if audio_is_playing(global.bgm){
	if audio_sound_get_gain(global.bgm){
		audio_playing = true;
	}
}

if (!instance_exists(obj_title)){
draw_sprite_ext(spr_audio_visualizer, visualizer_index, 0, 0, 2.5, 2.5, 0, c_white,  audio_playing);
}