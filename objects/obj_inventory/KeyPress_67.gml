if instance_exists(cutscene_mcronald_dont_walk_away){
	instance_destroy(cutscene_mcronald_dont_walk_away);
}
if array_length(inventory)>0 && !global.input_off && !global.in_dialogue{
//if global.in_inventory{
	
//}
//else{
	
//}
global.in_inventory = !global.in_inventory;
}