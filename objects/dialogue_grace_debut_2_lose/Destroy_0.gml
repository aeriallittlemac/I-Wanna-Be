event_inherited();
var inst = instance_create_depth(0,0,0,obj_black_screen);

with inst{
	screen_duration = 3;
	//screen_cutscene = dialogue_brooklyns_paranoia;
}
obj_player.x = 600;
obj_player.y = 100;
destroy_if_in_scene(inst_1D43132F);
instance_destroy(inst_60A96728);
instance_destroy(inst_325AA326);
teleport_npc(obj_grace, school_3F, 396, 109, DOWN);
global.game_time = "12:30 am"
global.night = true;
AddInstanceToActivate(inst_3D85AE7E);
AddInstanceToActivate(inst_10061687);