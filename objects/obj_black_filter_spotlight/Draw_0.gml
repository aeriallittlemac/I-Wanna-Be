draw_self();
draw_sprite_ext(spr_spotlight_centered, 0, spotlight_target.x, spotlight_target.y-40, 1, 1, 0, c_white, 1);
draw_sprite_ext(spotlight_target.sprite_index, 0, spotlight_target.x, spotlight_target.y, spotlight_target.image_xscale, spotlight_target.image_yscale, 0, c_white, 1);
