event_inherited();
instance_destroy(obj_black_filter);
var inst = instance_create_depth(0,0,0,obj_game_over_screen);

with inst{
	respawn_cutscene = dialogue_wake_up_drake_outside;
}

