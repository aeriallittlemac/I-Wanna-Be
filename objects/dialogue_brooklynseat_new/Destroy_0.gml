event_inherited();

if global.day == 2&& !global.storylines.Sewing_Club.Day_Two.talked_to.brooklyn{
	global.storylines.Sewing_Club.Day_Two.talked_to.brooklyn = true;
	instance_create_depth(0,0,0,obj_dating_sim);
}
else if global.day == 3&& !global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
	instance_create_depth(0,0,0,obj_dating_sim);
	global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn = true;
}
else if global.day == 4&& !global.storylines.Sewing_Club.Day_Two.talked_to.brooklyn{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
		}
		else{
			global.storylines.Sewing_Club.Day_Four.talked_to.brooklyn = true;
		}
	}
	else{
		global.storylines.Sewing_Club.Day_Four.talked_to.brooklyn = true;
	}

}
else if global.day == 5 &&!global.storylines.Brooklyns_quest.gun_obtained {
	item_acquired(global.item_list.brooklyns_gun);
	global.storylines.Brooklyns_quest.gun_obtained = true;
}