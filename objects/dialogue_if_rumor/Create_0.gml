
event_inherited();
deny = false;
	if global.storylines.Grace.deny_rumor{
		scr_text("YOU!", spr_grace_silhouette, 0);
		deny = true;
	}
	else{
		scr_text("Explain what you people did.", spr_grace_silhouette, 0);
		scr_text("Why, I don’t have the darndest idea...", spr_brooklyn_silhouette, 1);
		scr_text("I'm gonna murder you f*cking b*tch!", spr_grace_silhouette, 0);
		//animation
		scr_text("Woah, woah. Grace. Calm down!", spr_mei_silhouette, 0);
	}