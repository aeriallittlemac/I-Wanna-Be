function Locker(){
	var locker_length = 22;
	if player_hiding_locker_number == 0 {
		hiding = true;
		for(var i = 0; i < 11; i++){
			if obj_player.x >= x + (i * locker_length) && obj_player.x <= x +((i+1) * locker_length){
				image_index = i+1;
				player_hiding_locker_number = i+1;
			}
		}
	}
	else{
		hiding = false;
		obj_player.x = x + (locker_length * (player_hiding_locker_number-1)) + 11;
		global.player_sleeping = false;
		image_index = player_hiding_locker_number;
		player_hiding_locker_number = 0;
	}
}