minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
tempo = 100;
character_silhouette = spr_brooklyn_silhouette;
character_frame_rate = 12;
character_anim_frame = 0;
character_x = 135;
character_y = 20+45;
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
//timer = 5;
target_camera_height = 80;
character_target_scale = 0.7;
character_scale = target_camera_height/current_camera_height*character_target_scale;
camera_zoom_speed_height = 2;
camera_zoom_speed_width = camera_zoom_speed_height/current_camera_height*current_camera_width;

choice_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
timer_pixel_font = font_add("joystix monospace.otf", 25, false, false, 64, 128);
choice_index = 1;
choice_sep = 30;
choice_width = 350;
choice_box_margins = 15;
max_image_scale = 4;
grabbing = false;
throwable_target_x = 135;
throwable_target_y = 76;
text_elements = {
	dialogue_box : {
		choice_x : 135,
		choice_y: 125,
		choice_text:"Mumbling stuff...",
		
	},
	one : {
		choice_x : 230,
		choice_y: 40,
		choice_text:"That's ad hominem",
		
	},
	two : {
		choice_x : 230,
		choice_y: 70,
		choice_text:"You have no proof",
		
	},
	three : {
		choice_x : 230,
		choice_y: 100,
		choice_text:"Fair enough",
		
	},
	
}
choices = array_create(0);
array_push(choices, text_elements.dialogue_box);
array_push(choices, text_elements.one);
array_push(choices, text_elements.two);
array_push(choices, text_elements.three);
alarm[3] = 1;

a=0;
b=0;
c=0;
d=0;
original_shake_delay =70;
shake_delay = original_shake_delay;
shake_accel = 2;

alarm[4] = 1;
//array_push(choices, text_elements.throwable_one);
//array_push(choices, text_elements.throwable_two);

