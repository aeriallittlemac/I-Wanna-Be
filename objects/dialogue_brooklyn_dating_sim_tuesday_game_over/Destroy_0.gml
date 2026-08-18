event_inherited();
var inst = instance_create_depth(0,0,0,obj_game_over_screen);

with inst{
	respawn_cutscene = cutscene_brooklyn_dating_sim_respawn;
}
global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn = false;
global.storylines.Sewing_Club.Day_Three.talked_to.mei = false;
global.storylines.Sewing_Club.Day_Three.talked_to.ashley = false;