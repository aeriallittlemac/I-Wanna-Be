var sewing_club_r1 = [obj_brooklyn, obj_ashley]; 
		for(var i = 0; i < array_length(sewing_club_r1); i++){
				teleport_npc(sewing_club_r1[i], school_sewing_club, 85+i*43, 68, DOWN);
			}

		
		var sewing_club_r2 = [obj_mei, obj_grace]; 
		for(var i = 0; i < array_length(sewing_club_r2); i++){
				teleport_npc(sewing_club_r2[i], school_sewing_club, 85+i*43, 111, UP);
		}
teleport_player(215, 45, school_sewing_club);