//var inst = instance_create_depth(0,0,0, obj_mog_off_QTE);
if (global.storylines.Main_Classroom.Day_Four.talked_to.drake){
	show_debug_message("reset failed");
}
else{
	show_debug_message("reset success!");
}
global.storylines.Main_Classroom.Day_Four.talked_to.drake = true;