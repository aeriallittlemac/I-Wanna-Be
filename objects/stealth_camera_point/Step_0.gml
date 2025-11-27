if instance_exists(target){
	x = max(min(obj_player.x + 100, (obj_player.x + target.x)/2), obj_player.x - 100)
}
else{
	x = obj_player.x;
}