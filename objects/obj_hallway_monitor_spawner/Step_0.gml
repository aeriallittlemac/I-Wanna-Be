if abs(obj_player.x - x) < 200{
	x -= 135;
	if x < RESOLUTION_W{
		enable_vets = true;
	}
}
if timer <= 0{
	if enable_vets{
		instance_create_depth(x, 74, 0, obj_hallway_monitor_vet);
	}
	var inst = instance_create_depth(x, y + irandom(60) - 20, 0, obj_hallway_monitor_red);
	if instance_number(obj_hallway_monitor_red) > max_hallway_monitor_red_count{
		var furthest = instance_furthest(obj_player.x, obj_player.y, obj_hallway_monitor_red);
		var furthest_incoming = false;
		for (var j = 0; j < array_length(incoming_list); j++){
			if incoming_list[j] == furthest{
				furthest_incoming = true;
			}
		}
		if furthest_incoming{
			instance_destroy(inst);
		}
		else{
			instance_destroy(furthest);
		}
		
	}
	timer = (spawn_cd_min + irandom(spawn_cd_max - spawn_cd_min)) * room_speed;
}
else{
	timer --;
}
for (var i = 0; i < instance_number(obj_hallway_monitor_red); i++;)
{
   var inst = instance_find(obj_hallway_monitor_red,i);
   if !inst.warning_active{
	  if abs(obj_player.x - inst.x) < inst.warn_player_x_range && inst.dir * (obj_player.x - inst.x) > 1 {
		  var winst = instance_create_depth(0, obj_hallway_monitor_red.y, OBJ_MAX_DEPTH,obj_warning);
		  array_push(incoming_list, inst);
		  with winst{
			
			warning_parent = inst;
		  }
		  inst.warning_active = true;
	  }
   }
}








