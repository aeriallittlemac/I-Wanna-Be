event_inherited();
game_wait(3);
var inst = instance_create_depth(0,0,0,obj_black_screen);

with inst{
	screen_duration = 1;
	screen_cutscene = dialogue_brooklyns_paranoia;
}
obj_brooklyn.x = 196;
obj_brooklyn.y = 145;
obj_brooklyn.face = RIGHT;
obj_brooklyn.sprite_index = obj_brooklyn.sprite[RIGHT];
obj_player.x = 228;
obj_player.y = 134;
obj_player.face = LEFT;
obj_player.sprite_index = obj_player.sprite[LEFT];
game_wait(2);
