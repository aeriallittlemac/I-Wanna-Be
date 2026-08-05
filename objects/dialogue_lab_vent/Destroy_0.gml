event_inherited();
if global.day == 3{
instance_create_depth(0, 0, 0, obj_E18_to_E19);
}
else if global.day == 5 && array_length(obj_minimap.inv)>0
{
	if obj_minimap.inv[0] == global.quest_list.go_fetch_bullets{
		instance_create_depth(0, 0, 0, obj_E18_to_E14);
	}

}