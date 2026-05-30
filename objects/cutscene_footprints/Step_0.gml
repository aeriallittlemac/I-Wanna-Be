if global.storylines.Graces_room.phone && global.storylines.Graces_room.megaphone{
	game_wait(0.5);
	game_NewDialogue(dialogue_grace_footprints);
	instance_destroy(self);
}