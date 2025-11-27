/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();
if !instance_exists(obj_rhythm_game_arrows){
	image_index = 0
}
else{
	if !new_tempo{
		image_speed *= (obj_rhythm_game_arrows.tempo)/120;
		new_tempo = true;
	}
}
