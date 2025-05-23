event_inherited();
audio_play_sound(date_with_grace, 1, true)
obj_grace.sprite_index = obj_grace.sprite[RIGHT];
obj_grace.face = RIGHT;
ans = noone;
	scr_text("Great!", spr_grace_fake_smile, 0);
	scr_text("You’re the new kid, right?", spr_grace_fake_smile, 0);
	scr_text("What's your name?", spr_grace_fake_smile, 0);
	scr_text("Oh, Bobby?", spr_grace_fake_smile, 0);
	scr_text("My name is Grace. It’s so nice to meet you!", spr_grace_fake_smile, 0);
	scr_text("There is something seriously wrong with this woman.");
	scr_text("Say, Bobby.", spr_grace_fake_smile, 0);
	scr_text("Want a PB&J?", spr_grace_fake_smile, 0);
scr_option("Nah", "nah");
scr_option("Sure", "sure");

function branches(branch){
	textbox_reset();
	ans = branch;
	switch(branch){
		case "nah":
			scr_text("You tell her that you're good.");
			scr_text("Okie dokie! Guess I better start packing these up, then!", spr_grace_fake_smile, 0);
	    break;

	    case "sure":
			scr_text("Kay, here ya go!", spr_grace_fake_smile, 0);
	    break;
		default:
		scr_text("Excuse me?");

	}
}