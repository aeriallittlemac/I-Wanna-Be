minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
depth = FILTER_DEPTH
intro_alpha = 0.6;
text_x_offset = 60;
text_y_offset = 20;
corner_label_x = 680;

player_x = 0;
player_y = 0;
player_scale_x = 0;
player_scale_y = 0;
player_sprite = obj_player.sprite[RIGHT];
hint_horizontal_offset = 53;
hint_vertical_offset = 32;
hint_horizontal_margin = 5;
hint_vertical_margin = 2;
hint_box_height = 19;
second_page_margin = 95;
page_max_columns = 3;
hint_columns = 6;

font_add_enable_aa(false);
corner_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
default_pixel_font = font_add("joystix monospace.otf", 40, false, false, 64, 128);
quest_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
rumor_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);

global.pause_menu = false;
paused_surf = -1;

cur_quest ="";
page = 0;
selected_page = page;
button_positions = {
	bookmarks:{
		hint_button : {
			left_x : 216,
			top_y: 30,
			right_x : 216 + sprite_get_bbox_right(IWB_UI_hint_button)-sprite_get_bbox_left(IWB_UI_hint_button),
			bottom_y : 30 + sprite_get_bbox_bottom(IWB_UI_hint_button) - sprite_get_bbox_top(IWB_UI_hint_button),
			button_sprite : IWB_UI_hint_button,
		},
		settings_button : {
			left_x : 216,
			top_y: 44,
			right_x : 216 + sprite_get_bbox_right(IWB_UI_settings_button)-sprite_get_bbox_left(IWB_UI_settings_button),
			bottom_y : 44 + sprite_get_bbox_bottom(IWB_UI_settings_button) - sprite_get_bbox_top(IWB_UI_settings_button),
			button_sprite : IWB_UI_settings_button,
		},
		character_button : {
			left_x : 216,
			top_y: 58,
			right_x : 216 + sprite_get_bbox_right(IWB_UI_character_button)-sprite_get_bbox_left(IWB_UI_character_button),
			bottom_y : 58 + sprite_get_bbox_bottom(IWB_UI_character_button) - sprite_get_bbox_top(IWB_UI_character_button),
			button_sprite : IWB_UI_character_button,
		},
	},
	page_three:{
		left_arrow : {
			left_x : 50,
			top_y: 106,
			right_x : 63 + sprite_get_bbox_right(IWB_UI_character_left_arrow)-sprite_get_bbox_left(IWB_UI_character_left_arrow),
			bottom_y : 116 + sprite_get_bbox_bottom(IWB_UI_character_left_arrow) - sprite_get_bbox_top(IWB_UI_character_left_arrow),
			button_sprite : IWB_UI_character_left_arrow,
		},
	},
	
}
bookmark_position_list = array_create(0);
array_push(bookmark_position_list, button_positions.bookmarks.hint_button);
array_push(bookmark_position_list, button_positions.bookmarks.settings_button);
array_push(bookmark_position_list, button_positions.bookmarks.character_button);
function DrawMenu(){
draw_set_font(corner_pixel_font);
draw_text_transformed_colour(corner_label_x, 20, "pause menu", 1, 1, 0, c_white, c_white, c_white, c_white, 1);

draw_set_font(rumor_pixel_font);
draw_text_transformed_colour(text_x_offset, text_y_offset + 25, "Hottest rumor: " + global.hottest_rumor, 1, 1, 0, c_silver, c_red, c_silver, c_red, 1);

draw_set_font(quest_pixel_font);
draw_text_transformed_colour(text_x_offset, text_y_offset, "Current quest: "+cur_quest, 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

	draw_sprite_ext(IWB_UI_base, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	
	
if page == 0{
	draw_sprite_ext(IWB_UI_character_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_settings_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_top, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_hint_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	for(var i=0; i<page_max_columns; i++){
		draw_sprite_ext(IWB_UI_hint_box_column, -1, 12+(sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*i, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	}
	if (hint_columns > page_max_columns){
		for(var i=0; i<hint_columns - page_max_columns; i++){
			draw_sprite_ext(IWB_UI_hint_box_column, -1, second_page_margin*minimap_scale + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*i, 0, minimap_scale, minimap_scale, 0, c_white, 1);
		}
	
	}
	
}
else if page == 1{
	draw_sprite_ext(IWB_UI_character_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_hint_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_top, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_settings_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_slider, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_slider2, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
}
else if page == 2{
	draw_sprite_ext(IWB_UI_hint_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_settings_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_top, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_character_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_character_left_arrow, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_character_right_arrow, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
}
//draw_set_font(corner_pixel_font);
//draw_text_transformed_colour(corner_label_x, 20, "pause menu", 1, 1, 0, c_white, c_white, c_white, c_white, 1);

//draw_set_font(rumor_pixel_font);
//draw_text_transformed_colour(text_x_offset, text_y_offset + 35, "Hottest rumor: " + global.hottest_rumor, 1, 1, 0, c_silver, c_red, c_silver, c_red, 1);

//draw_set_font(quest_pixel_font);
//draw_text_transformed_colour(text_x_offset, text_y_offset, "Current quest: "+cur_quest, 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

//draw_text_transformed_colour(text_x_offset, text_y_offset - 35, "Reputation: " + string(global.reputation), 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

//draw_text_transformed_colour(text_x_offset + 270, text_y_offset - 35, "Female affinity: " + string(global.female_affinity), 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

}