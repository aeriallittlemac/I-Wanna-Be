fade_in_speed = 1;
screen_image_alpha = 0;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
game_over_screen = spr_game_over_screen_1;
game_wait(2);
game_NewDialogue(dialogue_game_over);
respawn_cutscene = noone;