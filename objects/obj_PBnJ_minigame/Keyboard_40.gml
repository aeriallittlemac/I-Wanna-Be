if (pb_knife_collision(hand_x, hand_y + hand_speed) || jam_knife_collision(hand_x, hand_y + hand_speed)) && grabbing == "knife"{
	hand_y -= hand_speed;
}
hand_y += hand_speed;

if smearing{
	smear++;
}