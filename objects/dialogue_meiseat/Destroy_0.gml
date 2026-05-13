if global.day == 2 && global.game_time == "3:30 pm"{
	var inst = instance_create_depth(0,0,0, obj_choice_default_QTE);
		with inst{
			choice.one.choice_text = "I’m Bobby";
			choice.one.choice_cutscene = dialogue_meiseat_im_bobby;
			choice.two.choice_text = "*stutters"
			choice.two.choice_cutscene = dialogue_meiseat_stutters;
			choice.three.choice_text = "Bill Cosby"
			choice.three.choice_cutscene = dialogue_meiseat_bill_cosby;
		}
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
	}
	else{
	
	}
}
else{

scr_text("Test dialogue", spr_mei_silhouette, 0);
}