obj_drake.x = 200;
obj_drake.y = 145;
npc_animate(obj_brooklyn, spr_brooklyn_right_hand);
obj_pistol.visible = true;
obj_pistol.y = obj_pistol.y;
obj_pistol.x = obj_brooklyn.x+13;
obj_pistol.image_xscale = -1;
obj_pistol.image_angle = 15;
npc_animate(obj_drake, spr_drake_jump_attack)
audio_play_sound(sfx_battle_cry, 1, false);
obj_drake.image_angle = 20;
alarm[0] = 80;