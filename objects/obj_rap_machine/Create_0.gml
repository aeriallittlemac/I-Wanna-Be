x_offset = -40;
y_offset = -50;
start = false;
default_pixel_font = font_add("joystix monospace.otf", 10, false, false, 32, 128);
font_add_enable_aa(false);
display_line = "";
start_bar = 3;
lyrics = array_create(0);

sixteenth = 1;
eighth = sixteenth*2;
quarter = eighth*2;
half = quarter*2;

tempo = 110;


timer = 0;
j = 0;


array_push(lyrics, ["","","Qui","et ","","bitch.","","I \n","im","plore ","you ","to ","stop ","","talk","ing"]);

array_push(lyrics, ["","","You're ","too ","re","tar","ded ","to \n","give ","up ","or ","pro","per","ly ","mock ","me"]);

array_push(lyrics, ["Name ","","","","ten ","","books, ","I \n","dare ","","you. ","","You'd ","have ","bet","ter"]);

array_push(lyrics, ["luck ","","get","ting","ten ","","looks ","\n","from ","your ","friends ","on ","Face","","book ",""]);

nextline = false;
beat = 0;
margin_of_line_error = 1;
instance_create_depth(0,0, OBJ_MAX_DEPTH, obj_rhythm_game);

function UpdateText(){
	if array_length(lyrics) <= 0{
		instance_destroy(self);
	}
	else{
		if beat == 0{
			nextline = true;
		}
	
		if nextline && lyrics[0][beat] != ""{
			display_line = "";
			nextline = false;
		}
		display_line += lyrics[0][beat];
		beat++;
		if beat >= array_length(lyrics[0]){
			array_delete(lyrics, 0, 1);
			beat = 0;
		}
	}	
}