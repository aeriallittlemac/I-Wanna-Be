event_inherited();
obj_scribble.black_filter = true;
obj_vfx.effects.white_noise.stop()
global.game_time = "12:00 am";
global.night = true;
obj_vfx.effects.horror.stop()

var inst = instance_create_depth(0,0,0, obj_graces_snake_game);
	with inst{
		win_cutscene = dialogue_grace_debut_2_win;
		lose_cutscene = dialogue_grace_debut_2_lose;
	}