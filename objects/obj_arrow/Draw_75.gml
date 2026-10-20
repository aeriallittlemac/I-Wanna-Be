var arrow_draw_x = (x-camera_get_view_x(view_camera[0]))*minimap_scale;
var arrow_draw_y = y*minimap_scale;
draw_sprite_ext(arrow_sprite, arrow_num, arrow_draw_x, arrow_draw_y, minimap_scale*2, minimap_scale*2, 0, c_white, 1 );