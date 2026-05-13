draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.8);
draw_sprite_ext(spr_test_hex, 2, (test_hex_x-31)*minimap_scale, test_hex_y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1);
draw_sprite_ext(spr_test_hex, test_hex_index, test_hex_x*minimap_scale, test_hex_y*minimap_scale, minimap_scale, minimap_scale, test_hex_rotation, c_white, 1); 
draw_sprite_ext(spr_test_hex_fixed, 0, (test_hex_x+15)*minimap_scale, (test_hex_y-23)*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1); 
