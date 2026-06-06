if pb_knife_collision(hand_x, hand_y) && !pb_knife_collision(hand_x-hand_speed, hand_y){
	hand_x += hand_speed;
	if knife_index!=1{
		knife_index = 1;
		audio_play_sound(sfx_grape_jam, 1, false);
	}
}
else if jam_knife_collision(hand_x, hand_y) && !jam_knife_collision(hand_x-hand_speed, hand_y){
	hand_x += hand_speed;
	if knife_index!=2{
		knife_index = 2;
		audio_play_sound(sfx_grape_jam, 1, false);
	}
}

else if hand_x-hand_speed < min_jar_x{
	hand_x += hand_speed;
}
hand_x -= hand_speed;

if smearing{
	smear++;
}