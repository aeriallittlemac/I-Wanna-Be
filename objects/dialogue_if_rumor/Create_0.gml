obj_mei.face = LEFT;
obj_mei.sprite_index = obj_mei.sprite[LEFT];
npc_move_to_pos(obj_grace, 1, 0, obj_grace.x + 20, 0);
npc_wait(obj_grace, 0.2);
npc_move_to_pos(obj_grace, 1, 0, obj_grace.x + 19, 0);
npc_wait(obj_grace, 0.2);
npc_move_to_pos(obj_grace, 1, 0, obj_grace.x + 20, 0);
event_inherited();
deny = false;
	if global.storylines.Grace.deny_rumor{
		scr_text("YOU!", spr_grace_icon, 0);
		deny = true;
	}
	else{
		scr_text("Explain what you people did.", spr_grace_icon, 0);
		scr_text("Why, I don’t have the darndest idea...", spr_brooklyn_snicker, 1);
		scr_text("I'm gonna murder you f*cking b*tch!", spr_grace_demonic, 0);
		//animation
		scr_text("Woah, woah. Grace. Calm down!", spr_mei_nervous_smile, 0);
	}