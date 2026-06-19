event_inherited();
var inst = instance_create_depth(0,0,0,obj_black_screen);
with inst{
	screen_duration = 2;
	screen_cutscene = cutscene_gambinos_final_words;
}
audio_play_sound(sfx_glass_shatter, 1, false);
npc_animate(obj_drake, spr_drake_down);
obj_drake.image_angle = 0;
npc_animate(obj_gambino, spr_gambino_dead);
obj_drake.x = obj_gambino.x+12;
obj_drake.y = obj_gambino.y;
instance_destroy(blood_spray);
npc_animate(obj_brooklyn, spr_brooklyn_dead);
obj_pistol.x = obj_pistol.x+25;
obj_pistol.y = obj_pistol.y+10;