wait(0.25);
var y_margin = abs(obj_player.y - obj_mei.y)
move_to_pos(1, 1, obj_player.x - y_margin, obj_mei.y)
npc_move_to_pos(obj_mei, 1, 0, 610, obj_mei.y);
move_to_pos(1, 0, 610, obj_player.y)
npc_move_to_pos(obj_mei, 0, 1, obj_mei.x, 80);
teleport_npc(obj_mei, school_3F, 206, 97, UP);
teleport_player(286, 101, school_3F, dialogue_mei_interact_if_rumor_deny_finding_grace_1);