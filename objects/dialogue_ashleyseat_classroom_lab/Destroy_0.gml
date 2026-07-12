event_inherited();

obj_ashley.x = obj_ashley.last_x;
obj_ashley.y = obj_ashley.last_y;
obj_ashley.face = obj_ashley.last_face;

if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.ashley{
	global.storylines.Main_Classroom.Day_Two.talked_to.ashley = true;
}
else if global.day == 3&& !global.storylines.Lab.Day_Three.talked_to.ashley{
	global.storylines.Lab.Day_Three.talked_to.ashley = true;
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Four.talked_to.ashley{
	global.storylines.Main_Classroom.Day_Four.talked_to.ashley = true;

}