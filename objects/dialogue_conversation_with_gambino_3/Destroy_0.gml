if inquire{
	instance_create_depth(0,0,0,beatmap_gambino_inquiry);
}
else{
	NewQuest(global.quest_list.find_drake, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
	teleport_npc(obj_drake, school_male_bathroom, 15, 117, UP)
	teleport_npc(obj_jake, school_male_bathroom, 50, 117, LEFT)
	teleport_npc(obj_frenchie, school_B1, 270, 125, DOWN)
	obj_frenchie.entityActivateScript = NewDialogue;
	obj_frenchie.entityActivateArg = dialogue_frenchie_debut;
}