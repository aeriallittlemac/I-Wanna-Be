if room == school_main_classroom || room == school_gambinos_room{
	face = UP;
	sprite_index = sprite[UP];
}
//if room == rap_battle_hall{
//	global.player_sleeping = true;
//}
if (room == school_1F || room == school_2F) && global.day == 2 && global.game_time == "5:00 pm"{
	global.game_time = "5:01 pm";
	
}