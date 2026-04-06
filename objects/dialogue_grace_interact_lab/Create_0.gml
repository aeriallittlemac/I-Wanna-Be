event_inherited();
global.text_box_top = true;
obj_player.sprite_index = obj_player.sprite[RIGHT];
obj_player.face = RIGHT;
if global.storylines.Grace.truth_or_dare_confession{
	scr_text("Hey, you.", spr_grace_icon, 0);
	scr_text("What the hell was that yesterday?", spr_grace_icon, 0);
	scr_text("Why does everyone think that you and me are an item?", spr_grace_icon, 0);
	scr_text("Is this some kind of joke?", spr_grace_icon, 0);
}
else{
	scr_text("Oh, hello!", spr_grace_fake_smile, 0);
	scr_text("It’s so unfortunate that I already have a lab partner, so no, thank you!", spr_grace_fake_smile, 0);
	scr_text("It’s so nice having that dumb Frenchie boy run errands for me.", spr_grace_gloat_1, 0);
	scr_text("Last semester, I even made him do my taxes, heehee!", spr_grace_gloat_1, 0);
}