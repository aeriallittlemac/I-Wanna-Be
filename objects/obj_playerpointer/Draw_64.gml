if obj_minimap.map_visible && obj_minimap.school_hall{
minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);
draw_sprite_ext(sprite_index, -1, x*minimap_scale, y*minimap_scale, minimap_scale*image_xscale, minimap_scale*image_yscale, 0, c_white, 1 );
}



