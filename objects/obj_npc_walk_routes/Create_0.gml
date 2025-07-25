test_start_walk = false;
npc_numbers = array_create(5,0);
t_room = array_create(5,noone);
t_x = array_create(5,0);
t_y = array_create(5,0);
facing_dir = array_create(5,RIGHT);

function delayed_npc_tp(n, targetroom, targetx, targety){
	for(var i=0; i < array_length(npc_numbers); i++){
		if alarm[i] < 0{
			t_room[i] = targetroom;
			t_x[i] = targetx;
			t_y[i] = targety;
			for(var j = 0; j < array_length(obj_npc_manager.npcs); j++){
				if n == obj_npc_manager.npcs[j].object{ 
					npc_numbers[i] = j;
					show_debug_message("i");
					show_debug_message(i);
					show_debug_message("j");
					show_debug_message(j);
					alarm[i] = 2;
					return;
				}
			}
			
		}
	}
}