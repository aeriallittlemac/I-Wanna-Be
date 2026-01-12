event_inherited();
global.text_box_top = true;
if global.storylines.Grace.truth_or_dare_confession{
	scr_text("Hey, you.", spr_grace_icon, 0);
	scr_text("What the hell was that yesterday?", spr_grace_icon, 0);
	scr_text("Is this some kind of joke?", spr_grace_icon, 0);
	scr_text("Grace’s confrontation backfires, as you hear more whispers and gossip around the two of you.");
	scr_text("*Notices the commotion", spr_grace_icon, 0);
	scr_text("You’ll pay for this...", spr_grace_icon, 0);
}
else{
	scr_text("Oh, hello!", spr_grace_fake_smile, 0);
	scr_text("It’s so unfortunate that I already have a lab partner, so no, thank you!", spr_grace_fake_smile, 0);
}