if global.day == 2 && global.game_time == "3:30 pm"{
	instance_create_depth(0, 0, 0, beatmap_mei_first_meeting);
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	global.storylines.Sewing_Club.Day_Three.talked_to.mei = true;
	if global.storylines.Grace.truth_or_dare_confession{
		if global.storylines.Grace.deny_rumor{
			//instance_create_depth(0, 0, 0, beatmap_mei_tuesday_sewing_club_rumor_deny);
			var inst = instance_create_depth(0, 0, 0, obj_mei_QTE);
			inst.win_cutscene = dialogue_mei_interact_if_rumor_deny_succeed;
			inst.lose_cutscene = dialogue_mei_interact_if_rumor_deny_fail;
		}
		else{
			instance_create_depth(0, 0, 0, beatmap_mei_tuesday_sewing_club_rumor_escalated);
		}
	}
	else{
	
	}
}
else{

scr_text("Test dialogue", spr_mei_grin, 0);
}