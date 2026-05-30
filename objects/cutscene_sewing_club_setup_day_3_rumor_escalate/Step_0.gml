if global.storylines.Sewing_Club.Day_Three.talked_to.mei &&
global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn &&
global.storylines.Sewing_Club.Day_Three.talked_to.ashley{
	teleport_npc(obj_grace, school_sewing_club, 216, 45, DOWN);
	game_NewDialogue(dialogue_grace_interact_rumor_escalation);
	instance_destroy(self);
}