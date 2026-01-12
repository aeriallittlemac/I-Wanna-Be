/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();
if instance_exists(obj_rhythm_game_arrows){
	image_alpha = 0;
	if !start{
		sprite_index = spr_drum_kit;
		start = true;
	}
	else{
		if !new_tempo{
			image_speed = (obj_rhythm_game_arrows.tempo)/120;
			new_tempo = true;
		}
	}
	show_debug_message(image_speed);
}
else{
	image_alpha = 1;
	sprite_index = spr_drum_kit_idle;
	new_tempo = false;
	start = false;
}
