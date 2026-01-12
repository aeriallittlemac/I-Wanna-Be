global.text_box_top = false;
if !global.storylines.Lab.Day_Three.talked_to.guy{
global.storylines.Lab.Day_Three.talked_to.guy = true;
NewQuest(global.quest_list.potato_battery, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
}
else{
	if potato_battery{
		instance_create_depth(0,0,0,potato_battery_experiment);
		obj_guy.entityActivateArg = -1;
	}
}