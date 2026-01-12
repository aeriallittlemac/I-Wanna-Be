event_inherited();
if !global.storylines.Grace.truth_or_dare_confession{
	scr_text("Oh, it's the newbie", spr_brooklyn_icon, 0);
	scr_text("Hey, Bobby!", spr_mei_icon, 0);
}
else{
	scr_text("Hey, Bobby!", spr_mei_icon, 0);
	scr_text("Lucky you, huh?", spr_mei_icon, 0);
	scr_text("Who’s this?", spr_brooklyn_icon, 0);
	scr_text("*Cleary remembers you.", spr_brooklyn_icon, 0);
	scr_text("That’s Grace’s new boyfriend, remember?", spr_mei_icon, 0);
	scr_text("Ah, yes. Sucks to be you, boy.", spr_brooklyn_icon, 0);
	scr_text("Brooklyn!", spr_mei_icon, 0);
	scr_text("*She’s scolding her but she’s laughing along.", spr_mei_icon, 0);
}