event_inherited();

if global.day ==  2&& !global.storylines.Sewing_Club.Day_Two.talked_to.mei{
	global.storylines.Sewing_Club.Day_Two.talked_to.mei = true;
}
else if global.day == 3{
	if global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
		var inst = instance_create_depth(0, 0, 0, obj_mei_QTE);
		inst.win_cutscene = dialogue_mei_interact_if_rumor_deny_succeed;
		inst.lose_cutscene = dialogue_mei_interact_if_rumor_deny_fail;
	}
}
else if global.day == 4{
	global.storylines.Sewing_Club.Day_Four.talked_to.mei = true;
	cutscene_sewing_club_setup_day_4_brooklyns_route.brooklyn_walks_in();
	

}