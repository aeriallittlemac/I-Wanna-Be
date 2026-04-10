minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
tempo = 100;
character_silhouette = spr_bobby_silhouette;
character_frame_rate = 12;
character_anim_frame = 0;
character_x = 135;
character_y = 20+68;
alarm[1] = 120/character_frame_rate*120/tempo;
current_fps = game_get_speed(gamespeed_fps);
game_set_speed(240, gamespeed_fps);
start = false;
alarm[0] = 1;
current_camera_target = camera_get_view_target(view_camera[0]);
camera_set_view_target(view_camera[0], obj_player);
current_camera_y = camera_get_view_y(view_camera[0]);
current_camera_height = camera_get_view_height(view_camera[0]);
current_camera_width = camera_get_view_width(view_camera[0]);
global.QTE = true;
timer = 5;
target_camera_height = 80;
character_scale = target_camera_height/current_camera_height;
camera_zoom_speed_height = 2;
camera_zoom_speed_width = camera_zoom_speed_height/current_camera_height*current_camera_width;

choice_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
timer_pixel_font = font_add("joystix monospace.otf", 25, false, false, 64, 128);
choice_sep = 30;
choice_width = 350;
choice_box_margins = 15;
choice_selected = 0;
choice = {
	one : {
		choice_x : 54,
		choice_y: 43,
		choice_text:"This is choice one",
		choice_cutscene: dialogue_QTE_one,
		
	},
	two : {
		choice_x : 216,
		choice_y: 43,
		choice_text:"Choice two",
		choice_cutscene: dialogue_QTE_two,
		
	},
	three : {
		choice_x : 135,
		choice_y: 125,
		choice_text:"Choice three? Perchance. Maybe I am mistaken.",
		choice_cutscene: dialogue_QTE_three,
		
	},
}
choices = array_create(0);
array_push(choices, choice.one);
array_push(choices, choice.two);
array_push(choices, choice.three);
