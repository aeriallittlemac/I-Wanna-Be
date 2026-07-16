event_inherited();

obj_frenchie.x = obj_frenchie.last_x;
obj_frenchie.y = obj_frenchie.last_y;
obj_frenchie.face = obj_frenchie.last_face;

if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.frenchie{
	global.storylines.Main_Classroom.Day_Two.talked_to.frenchie = true;
}
else if global.day == 3&& !global.storylines.Lab.Day_Three.talked_to.frenchie{
	global.storylines.Lab.Day_Three.talked_to.frenchie = true;
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Four.talked_to.frenchie{
	global.storylines.Main_Classroom.Day_Four.talked_to.frenchie = true;

}