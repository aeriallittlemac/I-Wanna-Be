event_inherited();
if global.day == 3 && global.storylines.Lab.Day_Three.talked_to.job{
instance_create_depth(0, 0, 0, obj_E18_to_E19);
}
else if global.day == 5 && global.storylines.Lab.Day_Five.start_roam
{
	instance_create_depth(0, 0, 0, obj_E18_to_E14);
}