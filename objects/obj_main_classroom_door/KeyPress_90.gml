if dist_to_player < interact_range && player_facing_self&&!global.cutscene&&!global.in_dialogue{	
	if global.day == 2{
		if global.game_time == "10:00 am"{
			QuestCompleted(global.quest_list.first_class);
			door();
		}
	}
}