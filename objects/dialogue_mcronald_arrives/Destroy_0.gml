event_inherited();
var inst = instance_create_depth(0,0,0,obj_black_screen);

with inst{
	screen_duration = 1;
}
game_wait(2.5);
game_NewDialogue(dialogue_mcronald_reveal);
teleport_npc(obj_gambino, noone, 0, 0, DOWN);
instance_destroy(blood_spray_brooklyn);
instance_destroy(obj_pistol);