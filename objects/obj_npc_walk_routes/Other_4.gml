if alarm[11] < 0{
	show_debug_message("yo");
npc_numbers = array_create(5,0);
t_room = array_create(5,noone);
t_x = array_create(5,0);
t_y = array_create(5,0);
facing_dir = array_create(5,RIGHT);

if room == school_1F{
	if test_start_walk{
		teleport_npc(obj_guy, school_1F,1585,161,LEFT);
		npc_move_to_pos(obj_guy, 2, 0, 722, obj_guy.y);
		npc_move_to_pos(obj_guy, 0, 1, obj_guy.x, 96);
		delayed_npc_tp(obj_guy, noone, 0,0);
	}
	if global.day == 2
	{
		switch (global.game_time){

		case "10:00 am":
			teleport_npc(obj_guy, school_1F,1585,161,LEFT);
			npc_move_to_pos(obj_guy, 2, 0, 722, obj_guy.y);
			npc_move_to_pos(obj_guy, 0, 1, obj_guy.x, 96);
			delayed_npc_tp(obj_guy, noone, 0,0);
		break;
		case "12:00 pm":
			teleport_npc(obj_jake, school_1F,722,161,RIGHT);
			npc_move_to_pos(obj_jake, 3, 0, 1600, obj_jake.y);
			delayed_npc_tp(obj_jake, noone, 0,0);
			
			teleport_npc(obj_grace, school_1F,1155,124,RIGHT);
			npc_move_to_pos(obj_grace, 1, 0, 1620, obj_grace.y);
			delayed_npc_tp(obj_grace, noone, 0,0);
			
			teleport_npc(obj_mei, school_1F,1170,124,RIGHT);
			npc_wait(obj_mei,0.3);
			npc_move_to_pos(obj_mei, 1, 0, 1620, obj_mei.y);
			delayed_npc_tp(obj_mei, noone, 0,0);
			
		break;
		default:
		}
	}
	
}
	alarm[11] = 20;
}
