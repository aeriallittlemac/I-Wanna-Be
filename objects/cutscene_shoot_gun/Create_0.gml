audio_play_sound(sfx_gun_shot, 1, false);
var inst = instance_create_depth(0,0,0,obj_black_screen);
with inst{
	screen_duration = 2;
	screen_cutscene = cutscene_gambinos_final_words;
}