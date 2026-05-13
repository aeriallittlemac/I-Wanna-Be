event_inherited();
teleport_npc(obj_mei, school_1F, obj_player.x - 40, obj_player.y, DOWN);
//teleport_npc(obj_wei, school_1F, obj_player.x - 80, obj_player.y, RIGHT);
obj_mei.xspeed = 0;
obj_mei.yspeed = 0;
scr_text("I’m sure Grace will be getting her megaphone from her room.", spr_mei_silhouette, 0);
scr_text("It’s the only way people don’t ignore what she says.", spr_mei_silhouette, 1);
scr_text("Of course that cunt owns one.");