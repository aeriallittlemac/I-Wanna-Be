global.storylines.Sewing_Club.Day_Three.talked_to.mei = true;
game_change_reputation(10);
game_change_female_affinity(20);
npc_move_to_pos(obj_mei, 1, 0, obj_mei.x+30, obj_mei.y);
teleport_player(855, 125, school_1F, dialogue_mei_interact_if_rumor_deny_finding_grace);