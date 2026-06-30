audio_play_sound(sfx_light_switch, 1, false);
alarm[0] = 30;
var inst = instance_create_depth(0,0,0,obj_black_screen);
with inst{
	screen_duration = 2;
	screen_cutscene = cutscene_gambinos_apparence_2;
}
teleport_npc(obj_gambino, school_main_classroom, 132, 43, DOWN);