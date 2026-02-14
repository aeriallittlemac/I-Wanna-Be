event_inherited();
scr_text("You feel you’ve made a powerful-");
scr_text("Well, no, but an enemy none the less.");
scr_text("You could use something to put Frenchie in a better mood, he seems to be getting out of hand.")
potion_obtained = false;
for (var i=0; i<array_length(obj_inventory.inventory); i++){
	if obj_inventory.inventory[i] == global.item_list.love_potion{
		potion_obtained = true;
	}
}
if potion_obtained{
	scr_text("What did Guy say? A dash or two?");
	scr_text("*You pour the whole bottle in Frenchie’s sandwich, covering the jelly.");
	scr_text("Better safe than sorry.");
	global.storylines.Band.Frenchie_poisoned = true;
}
else{
	scr_text("Whatever. I’m sure he’s fine.");
	scr_text("This feels like an important point, though.");
}