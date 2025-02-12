event_inherited();
instance_create_depth(417, 118, inst_7AC3F02C.depth-1, obj_burger_on_a_plate);
audio_play_sound(date_with_grace, 0, true);
scr_text("You hand the burger to Grace on a plate.")
scr_text("All...for me?", spr_grace_fake_smile, 0);
scr_option("be considerate", "tease");
scr_option("be blunt", "blunt");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "tease":
			scr_text("You tell her that you’d gladly eat the leftovers if she couldn’t finish.")
			
			scr_text("No no no, that wasn't, like, my point...", spr_grace_fake_smile, 0);
			
			scr_text("And that f-feels kind of wrong, somehow...", spr_grace_fake_smile, 0);
			
			scr_text("Anyways, are you sure you don't want a piece?", spr_grace_fake_smile, 0);
			
			scr_text("You tell her you're good.");
			
			scr_text("Alright, then...", spr_grace_fake_smile, 0);
			
			
	    break;

		case "blunt":
			scr_text("You tell her that she’s eating it or it’s going in the trash.");
			
			scr_text("W-wait, let’s not be hasty!I’ll eat it!", spr_grace_fake_smile, 0);
			
		break;
		
	}
}