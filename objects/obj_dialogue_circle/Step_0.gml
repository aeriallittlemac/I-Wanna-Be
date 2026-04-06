image_alpha= !global.cutscene && 
!global.in_dialogue && !global.timed_dialogue &&!global.in_slideshow && !instance_exists(obj_rhythm_game_arrows)
&& !global.in_hints;
if priority{
	image_blend = c_yellow;
}