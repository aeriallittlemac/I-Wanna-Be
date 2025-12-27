yes = false;
event_inherited();

obj_hints.is_choosing_restore = true;

scr_text("Restore Save \"" + (string_length(save_name) > 0 ? save_name : "Unknown") + "\"?");
scr_option("Yes", "yes");
scr_option("No", "no");

function branches(branch) {
	textbox_reset();

	switch(branch){
		case "yes":
			yes = true;
			scr_text(save_name + "...");
			break;
		case "no":
			scr_text("Cancelled.");
			break;
	}
}
