minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
instance_create_depth(camera_get_view_x((view_camera[0])) + 45, 60, 0, obj_experiment_copper_coin);
instance_create_depth(camera_get_view_x((view_camera[0])) + 15, 80, 0, obj_experiment_LED_light);
instance_create_depth(camera_get_view_x((view_camera[0])) + 15, 115, 0, obj_experiment_zinc_chip);
experiment_items = ["Copper Coin", "Zinc Chip", "LED Light"];
default_pixel_font = font_add("joystix monospace.otf", 28, false, false, 32, 128);
item_text_x = 60;
item_text_y = 60;
item_margins = 30;
option = 0;
item_selected = false;

coin_placed = false;
LED_placed = false;
zinc_placed = false;