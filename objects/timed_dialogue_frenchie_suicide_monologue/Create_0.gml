instance_create_depth(obj_frenchie.x, 0, TEXTBOX_DEPTH+1, obj_spotlight_centered);
instance_create_depth(obj_frenchie.x, obj_frenchie.y, -201, obj_frenchie_projection);
//teleport_npc(obj_frenchie, noone, 0,0, DOWN);
event_inherited();
scr_text_timed("To die, to sleep...", 1, spr_frenchie_icon, 0);
scr_text_timed("To sleep, perchance to dream...", 1, spr_frenchie_icon, 0);