page = 0;
cursor = RIGHT;
depth = FILTER_DEPTH
intro_alpha = 0.6;
character = obj_npc_manager.npcs[0];
character_name = "";
character_title = "";
character_x = 240;
character_y = 320;
text_y_offset = 100;
text_y = 10 + text_y_offset;
title_y = 60 + text_y_offset;
relationship_y = 106 + text_y_offset;
current_obersavation_y = 140 + text_y_offset;
text_x_offset = 110;
arrow_y = 365;
right_arrow_x = 660;
left_arrow_x = 110;
character_scale = 2;
female_y_offset = 24;
font_add_enable_aa(false);
default_pixel_font = font_add("joystix monospace.otf", 36, false, false, 64, 128);
title_pixel_font = font_add("joystix monospace.otf", 20, false, false, 64, 128);
relationship_pixel_font = font_add("joystix monospace.otf", 12, false, false, 64, 128);
description_pixel_font = font_add("joystix monospace.otf", 9, false, false, 64, 128);
arrow_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
draw_set_font(default_pixel_font);
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;

function right_arrow_selected(){
	draw_text_transformed_colour(right_arrow_x, arrow_y, "next\npage", 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);
	draw_text_transformed_colour(left_arrow_x, arrow_y, "last\npage", 1, 1, 0, c_ltgray, c_ltgray, c_ltgray, c_ltgray, 1);
}

function left_arrow_selected(){
	draw_text_transformed_colour(right_arrow_x, arrow_y, "next\npage", 1, 1, 0, c_grey, c_grey, c_grey, c_grey, 1);
	draw_text_transformed_colour(left_arrow_x, arrow_y, "last\npage", 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);
}
