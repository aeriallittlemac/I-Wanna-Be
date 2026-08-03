event_inherited();
if !global.storylines.dead_bodies_checked{
	instance_create_depth(0,0,0, obj_drawer_scene);
	game_wait(5);
	game_NewDialogue(dialogue_drake_knocks_on_door)
}
global.storylines.dead_bodies_checked = true;