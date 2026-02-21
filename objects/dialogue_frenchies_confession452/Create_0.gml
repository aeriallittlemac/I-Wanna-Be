event_inherited();
if global.storylines.Grace.truth_or_dare_confession && !global.storylines.Grace.deny_rumor{
	scr_text("Frenchie acting weird route", spr_frenchie_icon, 0);
}
else{
	scr_text("Frenchie's not here", spr_mcronald_icon, 0);
}