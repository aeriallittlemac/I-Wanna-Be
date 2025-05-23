audio_stop_all();
anim_frame = 0;
anim_frame_rate = 12;
characters_y = 90
rap_text_y_offset = -10
rappers_turn = true;
global.rap_battle = true;
rapper_sprite = spr_grace_right;
rapper_hurt_anim = spr_grace_right_hurt;
rapper_rap_anim = spr_grace_rap;
rapper_x = 60;
rapper_y = characters_y;
rapper_scale = 3.5;
rapper_hurt = false;
rapper_hurt_timer = 0.5;

rap_text_x = 80;
rap_text_y = characters_y + rap_text_y_offset;

opponent_sprite = spr_brooklyn_left;
opponent_hurt_anim = spr_brooklyn_left_hurt;
opponent_rap_anim = spr_brooklyn_rap;
opponent_x = 210;
opponent_y = characters_y;
opponent_scale = 3.5;
opponent_hurt = false;
opponent_hurt_timer = 0.5;

hurt_timer = 0;

stutter_cutscene = dialogue_cutscene_sub;


minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);

start = false;
default_pixel_font = font_add("joystix monospace.otf", 20, false, false, 32, 128);
font_add_enable_aa(false);
display_line = "";

lyrics = array_create(0);

sixteenth = 1;
eighth = sixteenth*2;
quarter = eighth*2;
half = quarter*2;
stutter = false;
timer = 0;
j = 0;
tempo = 110;
start_bar = 3;
max_misses = 6;
nextline = false;
beat = 0;
margin_of_line_error = 1;

function UpdateText(){
	if instance_exists(obj_rhythm_game){
		if array_length(lyrics) <= 0{
			instance_destroy(self);
		}
		else{
			if beat == 0{
				nextline = true;
			}
	
			if lyrics[0][beat] != ""{
				audio_play_sound(sfx_grace_speech, 1, false);
				if nextline{
				display_line = "";
				nextline = false;
				}
			}
			display_line += lyrics[0][beat];
			beat++;
			if beat >= array_length(lyrics[0]){
				array_delete(lyrics, 0, 1);
				beat = 0;
			}
		}
		}
	else{
		instance_destroy(self);
	}
}

function RapperTakeDamange(){
	if !rapper_hurt{
		var inst = instance_create_depth(rapper_x , rapper_y - 20, OBJ_MAX_DEPTH, obj_ghost_text)
		with inst{
		default_pixel_font = font_add("joystix monospace.otf", 11*2, false, false, 32, 128);
		overlay_text = "Ouch!";
		angle = 45;
		timer = 0.6;
		fade_speed = 2;
		}
		rapper_hurt = true;
		hurt_timer = rapper_hurt_timer*room_speed;
	}
}

function OpponentTakeDamange(){
	if !opponent_hurt{
		var inst = instance_create_depth(opponent_x , opponent_y - 20, OBJ_MAX_DEPTH, obj_ghost_text)
		with inst{
		default_pixel_font = font_add("joystix monospace.otf", 11*2, false, false, 32, 128);
		overlay_text = "Ouch!";
		angle = -45;
		timer = 0.6;
		fade_speed = 2;
		}
		opponent_hurt = true;
		hurt_timer = opponent_hurt_timer*room_speed;
	}
}

//tempo = 110;
//start_bar = 3;
//max_misses = 3;

//array_push(lyrics, ["Oh ","Brook","","lyn, ","","ba","","by.\n","You're ","act","ing ","to","tal","ly ","cra",""]);

//array_push(lyrics, ["-zy ","I'm ","just ","bring","ing ","the ","vibe ","\n","stop ","try","na ","mur","der ","the ","par","ty"]);

//array_push(lyrics, ["","","Just ","let ","us ","girls ","","do \n","girl ","","things ","","you ","go ","a","way"]);

//array_push(lyrics, ["","","Stick ","to ","your ","crap","py ","\nemo ","play","list ", "", "your ","","Ger ","ald ","Way!"]);


//instance_create_depth(0,0, OBJ_MAX_DEPTH, obj_rhythm_game);

