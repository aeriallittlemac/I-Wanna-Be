x -= obj_rhythm_game_arrows.block_speed;
if x < obj_player - 270{
	instance_destroy(self);
}