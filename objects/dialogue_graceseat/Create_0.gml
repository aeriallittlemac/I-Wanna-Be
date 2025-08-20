event_inherited();
if global.day == 2{
	if inst_GRACESEAT.seat_empty{
		scr_text("An empty seat...");
		scr_text("With a tint of a familiar feminine smell...");
	}
	else{
		inst_GRACESEAT.entityActivateArg = -1;	
		scr_text("*Whispers", spr_ashley_icon,1);
		scr_text("W-Why is a boy playing with us?", spr_ashley_icon,1);
	}
}
