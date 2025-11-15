if item_selected{
	obj_experiment_copper_coin.selected = false;
	obj_experiment_zinc_chip.selected = false;
	obj_experiment_LED_light.selected = false;
}
else{
	switch(option){
		case 0:
			obj_experiment_copper_coin.selected = true;
		break;
		case 1:
			obj_experiment_zinc_chip.selected = true;
		break;
		case 2:
			obj_experiment_LED_light.selected = true;
		break;
	}
}
item_selected = !item_selected;