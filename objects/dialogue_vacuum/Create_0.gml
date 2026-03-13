event_inherited();
frenchie_suck = false;
if instance_exists(obj_frenchie_ghost){
	if global.storylines.Mechanics_Introduced.battery_in_vacuum{
		scr_text("Out of battery.");
		scr_text("How are you gonna use this?");
		global.storylines.Mechanics_Introduced.vacuum_debut = true;
	}
	else{
		frenchie_suck = true;
		scr_text("Welp.");
		scr_text("Time to exterminate the euro.");
		scr_text("Wh-what is that on your hand?", spr_frenchie_nervous, 0);
		scr_text("N-no shot-", spr_frenchie_nervous, 0);
		scr_text("Ahhhhh!", spr_frenchie_nervous, 0);
	}
	
}
else{
	scr_text("Why do you have this?");
	scr_text("What are you doing?");
	scr_text("How the hell does this even fit your pocket?");
}