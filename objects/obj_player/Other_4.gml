if room == school_main_classroom || room == school_gambinos_room{
	face = UP;
	sprite_index = sprite[UP];
}
if room == rap_battle_hall{
	global.player_sleeping = true;
}
if room == school_1F && global.day == 2 && global.game_time = "5:00 pm"{
	game_wait(0.5);
	game_NewDialogue(dialogue_go_back_to_nap);
}