/// @description Insert description here
// You can write your code in this editor


if character_anim_frame < 6{
	character_anim_frame++;
}
else{
	character_anim_frame = 0;
}
alarm[1] = game_get_speed(gamespeed_fps)/character_frame_rate*60/tempo;