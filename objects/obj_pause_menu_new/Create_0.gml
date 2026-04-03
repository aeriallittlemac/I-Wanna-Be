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
page_max_rows = 4;
hint_columns = 6;

font_add_enable_aa(false);
corner_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
default_pixel_font = font_add("joystix monospace.otf", 40, false, false, 64, 128);
quest_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
rumor_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);

name_pixel_font = font_add("joystix monospace.otf", 30, false, false, 64, 128);
//character pamphlet setting
title_pixel_font = font_add("joystix monospace.otf", 13, false, false, 64, 128);
//relationship_pixel_font = font_add("joystix monospace.otf", 12, false, false, 64, 128);
description_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);

pamphletPage = 0;
character = obj_npc_manager.npcs[0];
character_name = "";
character_title = "";
character_x = 260;
character_y = 280;

character_x_offset = 440;

text_y = 90
title_y = 130
current_obersavation_y = 170;
character_scale = 1.4;
female_y_offset = 24;

global.pause_menu = false;
paused_surf = -1;

cur_quest ="";
page = 0;
selected_page = page;
focus_hint = -1;
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
		right_arrow : {
			left_x : 207,
			top_y: 106,
			right_x : 220 + sprite_get_bbox_right(IWB_UI_character_left_arrow)-sprite_get_bbox_left(IWB_UI_character_left_arrow),
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
	draw_healthbar(25*minimap_scale, 128*minimap_scale, 245*minimap_scale, 134*minimap_scale, global.reputation, #093315, c_maroon, #22B14C, 0, true, false);
	draw_healthbar(25*minimap_scale, (128+11)*minimap_scale, 245*minimap_scale, (134+11)*minimap_scale, global.female_affinity, #4B214C, c_maroon, #A349A4, 0, true, false);
	
if page == 0{
	draw_sprite_ext(IWB_UI_character_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_settings_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_top, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(IWB_UI_hint_button, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
	for(var i=0; i<page_max_columns; i++){
		draw_sprite_ext(IWB_UI_hint_box_column, -1, 12+(sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*i, 0, minimap_scale, minimap_scale, 0, c_white, 1);
		
		var col = i;
		for (var row = 0; row < page_max_rows; ++row) {
			obj_hints.draw_hint_icon(row, col, 180, 105);
		}
	}
	if (hint_columns > page_max_columns){
		for(var i=0; i<hint_columns - page_max_columns; i++){
			draw_sprite_ext(IWB_UI_hint_box_column, -1, second_page_margin*minimap_scale + (sprite_get_bbox_right(IWB_UI_hint_box_column) - sprite_get_bbox_left(IWB_UI_hint_box_column) + hint_horizontal_margin)*minimap_scale*i, 0, minimap_scale, minimap_scale, 0, c_white, 1);
			
			var col = i + page_max_columns;
			for (var row = 0; row < page_max_rows; ++row) {
				obj_hints.draw_hint_icon(row, col, 170 - obj_hints.hint_grid_col_spacing * page_max_columns + second_page_margin * minimap_scale, 105);
			}
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
	if pamphletPage > 0{
		draw_sprite_ext(IWB_UI_character_left_arrow, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
		if obj_menu_mouse.x > button_positions.page_three.left_arrow.left_x*minimap_scale
	&& obj_menu_mouse.x < button_positions.page_three.left_arrow.right_x*minimap_scale
	&& obj_menu_mouse.y > button_positions.page_three.left_arrow.top_y*minimap_scale
	&& obj_menu_mouse.y < button_positions.page_three.left_arrow.bottom_y*minimap_scale{
			draw_sprite_ext(IWB_UI_character_left_arrow_selected, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
			if keyboard_check_pressed(CONFIRM_ACTION){
				pamphletPage --;
			}
		}
	}
	if pamphletPage < array_length(obj_npc_manager.npcs)-1{
		draw_sprite_ext(IWB_UI_character_right_arrow, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
		if obj_menu_mouse.x > button_positions.page_three.right_arrow.left_x*minimap_scale
	&& obj_menu_mouse.x < button_positions.page_three.right_arrow.right_x*minimap_scale
	&& obj_menu_mouse.y > button_positions.page_three.right_arrow.top_y*minimap_scale
	&& obj_menu_mouse.y < button_positions.page_three.right_arrow.bottom_y*minimap_scale{
			draw_sprite_ext(IWB_UI_character_right_arrow_selected, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1); 
			if keyboard_check_pressed(CONFIRM_ACTION){
				pamphletPage ++;
			}
		}
	}
	
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
function DrawCharacter(){
character = obj_npc_manager.npcs[pamphletPage];
var female = character.object == obj_mei || character.object == obj_grace || character.object == obj_ashley || character.object ==  obj_brooklyn;

if character.introduced{
	draw_sprite_ext(character.intro_sprite, 0, character_x, character_y + female_y_offset*female, character_scale*minimap_scale, character_scale*minimap_scale, 0, c_white, 1);
	draw_set_color(c_maroon);
	draw_set_font(name_pixel_font);
	draw_text_transformed(character_x_offset, text_y, character.first_name, 1, 1, 0);

	draw_set_font(title_pixel_font);
	draw_text_transformed(character_x_offset, title_y, character.title, 1, 1, 0);


	draw_set_font(description_pixel_font);
	draw_text_ext_transformed_colour(character_x_offset, current_obersavation_y, character.current_obersavation, 16, 210, 1, 1, 0, c_maroon, c_maroon, c_maroon, c_maroon, 1);

}
else{
	draw_sprite_ext(character.intro_sprite, 0, character_x, character_y + female_y_offset*female, character_scale*minimap_scale, character_scale*minimap_scale, 0, c_black, 1);
	draw_set_color(c_maroon);
	draw_set_font(default_pixel_font);
	draw_text_transformed(character_x_offset, text_y, "???", 1, 1, 0);

}
}