if enemy_stun_frame < enemy_stun_frames{
	enemy_stun_frame++;
	if enemy_stun_frame %2 == 1{
		right_character_x -= 4;
	}
	else{
		right_character_x += 4;
	}
	alarm[2] = 60/enemy_stun_fps;
}
else{
	enemy_stun_frame = 0;
}
