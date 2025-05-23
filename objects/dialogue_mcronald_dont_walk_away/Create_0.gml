event_inherited();
if !variable_global_exists("dont_walk_away_trigger_counter"){
	global.dont_walk_away_trigger_counter = 1;
}
else{
	global.dont_walk_away_trigger_counter++;
}
if global.dont_walk_away_trigger_counter == 1{
	scr_text("Don't walk away, now.", spr_mcronald_icon, 0);
	scr_text("At least entertain my little trick, yeah?", spr_mcronald_icon, 0);
}
else if global.dont_walk_away_trigger_counter == 2{
	scr_text("Come on, you know where the card is, right?", spr_mcronald_icon, 0);
	scr_text("There's only so many places it can be!", spr_mcronald_icon, 0);
}
else if global.dont_walk_away_trigger_counter == 3{
	scr_text("Dude, it's just a sleight of the hand.", spr_mcronald_icon, 0);
	scr_text("Think, Bobby, Think!", spr_mcronald_icon, 0);
}
else if global.dont_walk_away_trigger_counter == 4{
	scr_text("...", spr_mcronald_icon, 0);
	scr_text("It's in your pockets, dumbass.", spr_mcronald_icon, 0);
	scr_text("Thanks for ruining this for me.", spr_mcronald_icon, 0);
}
else if global.dont_walk_away_trigger_counter >= 5{
	scr_text("What part of checking your pockets do you not understand?", spr_mcronald_icon, 0);
}