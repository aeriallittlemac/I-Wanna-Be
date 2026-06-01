
QTE_bgm = qte_bgm;
original_bgm_gain = audio_sound_get_gain(global.bgm);
audio_sound_gain(global.bgm, 0, 100);
if audio_is_playing(QTE_bgm){
	audio_stop_sound(QTE_bgm);
}
audio_play_sound(QTE_bgm, 1, true);
audio_sound_gain(QTE_bgm, 0, 0);
audio_sound_gain(QTE_bgm, 0.4, 100);

randomise();
win_cutscene = dialogue_QTE_one;
lose_cutscene = dialogue_QTE_two;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
character_silhouette = spr_brooklyn_silhouette;
character_frame_rate = 12;
character_anim_frame = 0;
character_anchor_x = 135;
character_y = 20+45;

character_x = character_anchor_x;
character_slide_target = 210;
character_slide_speed = 1;
character_damage_anim_frames = 12;
character_shake_offset = 0;
character_shake_margins = 3; 
character_shake_count = 8;

minigame_text = "Solve the puzzle to arrange your defense."

minigame_text_pixel_font = font_add("joystix monospace.otf", 12, false, false, 64, 128);
choice_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
timer_pixel_font = font_add("joystix monospace.otf", 25, false, false, 64, 128);

sentence = array_create(0);
array_push(sentence, "You");
array_push(sentence, "have");
array_push(sentence, "no");
array_push(sentence, "proof");
full_sentence = "You have no proof";
missing_words = 1;
random_words = array_create(0);
array_push(random_words, "I'm");
array_push(random_words, "sorry");
displayed_words = array_create(12, "");
displayed_missing = array_create(12, false);
puzzle = spr_gun_puzzles;
puzzle_result = obj_gun;
puzzle_empty_spaces = array_create(0);
array_push(puzzle_empty_spaces, 4);
array_push(puzzle_empty_spaces, 8);
array_push(puzzle_empty_spaces, 9);
piece_size = 29*minimap_scale;
puzzle_x = 85+45;
puzzle_y = 30+45;
puzzle_row_num = 4;
scattered_words = array_create(0);
scattered_pieces_x = 10+16;
scattered_pieces_y = 120+16;
scatter_pieces_padding = 50;
select_piece_index = 0;
function drawPuzzle(){
	draw_set_font(choice_pixel_font);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	for (var i=0; i<sprite_get_number(puzzle); i++){
		var row = floor(i/puzzle_row_num);
		var col = i%puzzle_row_num;
		draw_sprite_ext(puzzle, i, puzzle_x + col*piece_size, puzzle_y+row*piece_size, 1, 1, 0, c_white, !displayed_missing[i]);
		draw_sprite_ext(spr_puzzle_empty, i, puzzle_x + col*piece_size, puzzle_y+row*piece_size, 1, 1, 0, c_white, displayed_missing[i]);
		
		var text_angle = 0;
		if row%2 == 0{
			if col%2 == 0{
				text_angle = 45;
			}
			else{
				text_angle = -60;
			}
		}
		else{
			if col%2 == 1{
				text_angle = 45;
			}
			else{
				text_angle = -60;
			}
		}
		if !displayed_missing[i]{
		draw_text_ext_transformed_colour(puzzle_x + (col)*piece_size,  puzzle_y+(row)*piece_size, displayed_words[i], -1, -1, 1,  1.2, text_angle, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		}
	}
}


current_fps = game_get_speed(gamespeed_fps);
game_set_speed(240, gamespeed_fps);
start = false;
puzzle_start = false;
puzzle_finished = false;
alarm[0] = 1;
current_camera_target = camera_get_view_target(view_camera[0]);
camera_set_view_target(view_camera[0], obj_player);
current_camera_y = camera_get_view_y(view_camera[0]);
current_camera_height = camera_get_view_height(view_camera[0]);
current_camera_width = camera_get_view_width(view_camera[0]);
global.QTE = true;
timer = 20;
target_camera_height = 80;
character_target_scale = 0.7;
character_scale = target_camera_height/current_camera_height*character_target_scale;
camera_zoom_speed_height = 2;
camera_zoom_speed_width = camera_zoom_speed_height/current_camera_height*current_camera_width;


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
//array_push(choices, text_elements.one);
//array_push(choices, text_elements.two);
//array_push(choices, text_elements.three);
//alarm[1] = 100;
alarm[3] = 100;
a=0;
b=0;
c=0;
d=0;
original_shake_delay =70;
shake_delay = original_shake_delay;
shake_accel = 8;
//array_push(choices, text_elements.throwable_one);
//array_push(choices, text_elements.throwable_two);

