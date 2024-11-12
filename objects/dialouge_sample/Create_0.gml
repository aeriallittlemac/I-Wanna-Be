textbox_reset();
global.in_dialogue = true;
obj_textbox.cur_dialogue = self;
scr_text("This is the women's bathroom.", spr_wei_icon, 1);
scr_text("Read the fucking sign, jackass.", spr_wei_icon, 0);
scr_option("first", "first");
scr_option("second", "second");

function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "first":
			scr_text("First option here!");
			scr_option("first-first", "first-first");
			scr_option("first-second", "first-second");
	    break;

	    case "second":
			scr_text("sECOND option here!");
	    break;
		case "first-first":
			
			scr_text("First, and then first!");
			scr_option("first-first-first", "first-first-first");
		break;
		case "first-second":
			scr_text("First, and then second!");
		break;
		case "first-first-first":
		scr_text("It works!");
		default:
		scr_text("Excuse me?");

	}
}

