coin_placed = obj_experiment_copper_coin.snapped_on;
LED_placed = obj_experiment_LED_light.snapped_on;
zinc_placed = obj_experiment_zinc_chip.snapped_on;
if coin_placed && LED_placed && zinc_placed{
	instance_destroy(obj_experiment_copper_coin);
	instance_destroy(obj_experiment_LED_light);
	instance_destroy(obj_experiment_zinc_chip);
	instance_destroy(self);
}