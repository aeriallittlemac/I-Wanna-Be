minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
depth = FILTER_DEPTH
intro_alpha = 0.6;
text_x_offset = 60;
text_y_offset = 40;
corner_label_x = 680;

player_x = 0;
player_y = 0;
player_scale_x = 0;
player_scale_y = 0;
player_sprite = obj_player.sprite[RIGHT];

font_add_enable_aa(false);
corner_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
draw_set_font(corner_pixel_font);
quest_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
rumor_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);

global.pause_menu = false;
paused_surf = -1;

cur_quest ="";
function DrawMenu(){
draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, intro_alpha);


draw_set_font(corner_pixel_font);
draw_text_transformed_colour(corner_label_x, 20, "pause menu", 1, 1, 0, c_white, c_white, c_white, c_white, 1);

draw_set_font(rumor_pixel_font);
draw_text_transformed_colour(text_x_offset, text_y_offset + 35, "Hottest rumor: " + global.hottest_rumor, 1, 1, 0, c_silver, c_red, c_silver, c_red, 1);

draw_set_font(quest_pixel_font);
draw_text_transformed_colour(text_x_offset, text_y_offset, "Current quest: "+cur_quest, 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

draw_text_transformed_colour(text_x_offset, text_y_offset - 35, "Reputation: " + global.reputation, 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

draw_text_transformed_colour(text_x_offset, text_y_offset - 70, "Female affinity: " + global.female_affinity, 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

}