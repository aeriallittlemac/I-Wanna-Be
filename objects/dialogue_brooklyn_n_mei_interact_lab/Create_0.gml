event_inherited();
obj_player.sprite_index = obj_player.sprite[UP];
obj_player.face = UP;
if !global.storylines.Grace.truth_or_dare_confession{
	scr_text("Oh, it's the newbie", spr_brooklyn_portrait_default, 0);
	scr_text("Hey, Bobby!", spr_mei_portrait_default, 0);
	scr_text("You ask where Ashley is.");
	scr_text("Oh? And why would you like to know?", spr_brooklyn_portrait_default, 0);
}
else{
	scr_text("Hey, Bobby!", spr_mei_portrait_default, 0);
	scr_text("Lucky you, huh?", spr_mei_portrait_default, 0);
	scr_text("Who’s this?", spr_brooklyn_portrait_default, 0);
	scr_text("*Cleary remembers you.", spr_brooklyn_portrait_default, 0);
	scr_text("That’s the new kid, remember?", spr_mei_portrait_default, 0);
	scr_text("Ah, yes. Sucks that you have to be Grace's boyfriend, lmao.", spr_brooklyn_portrait_default, 0);
	scr_text("Brooklyn!", spr_mei_portrait_default, 0);
	
}