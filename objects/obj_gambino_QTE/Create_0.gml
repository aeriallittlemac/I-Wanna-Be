minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
instance_create_depth(obj_player.x*minimap_scale, obj_player.y*minimap_scale, depth-1, obj_lightning_player);
gambino_x = 135;
gambino_y = -100;