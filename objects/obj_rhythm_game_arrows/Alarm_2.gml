if enemy_stun_frame < enemy_stun_frames{
	enemy_stun_frame++;
}
else{
	enemy_stun_frame = 0;
}
alarm[2] = 60/enemy_stun_fps;