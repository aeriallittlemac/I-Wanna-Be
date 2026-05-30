manifest_sprite = spr_vent_test
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
square_x = 50;
square_y = 20;
squares = [1, 3, 0,
9, 2, 5,
4, 7, 6]
selected_index = 0;
global.QTE = true;
game_over = false;
manifest_cutscene = dialogue_QTE_one;