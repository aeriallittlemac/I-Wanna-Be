coin_placed = obj_experiment_copper_coin.snapped_on;
LED_placed = obj_experiment_LED_light.snapped_on;
zinc_placed = obj_experiment_zinc_chip.snapped_on;
if coin_placed && LED_placed && zinc_placed&&!experiment_over{
	audio_play_sound(sfx_kids_cheer, 1, false);
	alarm[0] = 0.5*room_speed
	experiment_over = true;
}