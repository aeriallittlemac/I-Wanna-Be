default_pixel_font = font_add("joystix monospace.otf", 28, false, false, 32, 128);
font_add_enable_aa(false);
cur_dialogue = noone;
x_border = 32;
portrait_x_border = 24;
y_border = 40;
line_sep = 8;
display_text = "";
text = array_create(0);
line_sep = 60;
style = "normal";
//text = ["I walk this empty street, on the boulevard of broken dreams. Where the city sleeps, and I'm the only one and I walk alone.", "My shadow's only thing that walks besides me."]
global.in_dialogue = false;

punctucation_pause = 0.2 * room_speed;
regular_pause = 0.02 * room_speed;
timer = 0;
i=1;
j=0;

setup = false;
speaker_sprite = array_create(0);
speaker_side = array_create(0);

option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;
text_width_limit = 0;
//speaker_side
//1:Left 0: Right

//function check_skip_line(){
//	var t = i+1;
//	var o = t;
//	while(string_char_at(text[j],t)!= " "){
//		t++;
//	}
//	if string_width(string_copy(text[j], 0, t)) > text_width_limit{
//		return true;
//	}
//	else{
//		return false;
//	}
	
//}