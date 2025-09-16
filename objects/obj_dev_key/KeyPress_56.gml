global.day = 2
global.game_time = "3:30 pm";
teleport_npc(obj_wei, noone, 0,0,DOWN);
instance_destroy(inst_GAME_START_CUTSCENE_TRIGGER);
game_camera_change_settings(obj_player, -1);
var sewing_club_r1 = [obj_ashley]; 
		for(var i = 0; i < array_length(sewing_club_r1); i++){
				teleport_npc(sewing_club_r1[i], school_sewing_club, 85+i*43, 68, DOWN);
			}

		
		var sewing_club_r2 = [obj_brooklyn, obj_mei]; 
		for(var i = 0; i < array_length(sewing_club_r2); i++){
				teleport_npc(sewing_club_r2[i], school_sewing_club, 85+i*43, 111, UP);
			}
teleport_player(215, 45, school_sewing_club);
