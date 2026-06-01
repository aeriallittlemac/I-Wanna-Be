if global.storylines.Sewing_Club.Day_Three.talked_to.ashley&&
global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
	
	global.storylines.Sewing_Club.Day_Three.mei_resolves_to_talk = true;
	if global.storylines.Sewing_Club.Day_Three.talked_to.mei{
		game_NewDialogue(dialogue_meiseat);	
	}
	instance_destroy(self);
	
}