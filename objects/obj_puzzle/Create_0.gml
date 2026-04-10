minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
puzzle_piece_sprite = spr_puzzles;
puzzle_index = -1;
puzzle_word = "";
piece_index = -1;
choice_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
piece_grabbed = false;
move_speed = 150;