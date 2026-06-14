event_inherited();
depth = TEXTBOX_DEPTH-1;
draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, alpha)
var sprite_x = RESOLUTION_W*minimap_scale*((1-sprite_scale)/2);
var sprite_y = RESOLUTION_H*minimap_scale*((1-sprite_scale)/2);
draw_sprite_stretched_ext(sprite, -1, sprite_x, sprite_y, RESOLUTION_W*minimap_scale*sprite_scale, RESOLUTION_H*minimap_scale*sprite_scale, c_white, alpha)