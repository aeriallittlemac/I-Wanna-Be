ax = obj_player_hitbox.bbox_left;
ay = obj_player_hitbox.bbox_top;
bx = obj_player_hitbox.bbox_right;
by = obj_player_hitbox.bbox_top;
cx = obj_player_hitbox.bbox_left;
cy = obj_player_hitbox.bbox_bottom;
dx = obj_player_hitbox.bbox_right;
dy = obj_player_hitbox.bbox_bottom;
O = bbox_left;
P = bbox_right;
M = bbox_top;
N = bbox_bottom;

if (O <= cx && cx <= P && M - interact_range <= cy && cy <= M+1) 
|| (O <= dx && dx <= P && M - interact_range <= dy && dy <= M+1){
	player_relative_pos = "UP";
}
else if (P <= cx && cx <= P + interact_range && M <= cy && cy <= N) 
|| (P <= ax && ax <= P + interact_range && M <= ay && ay <= N){
	player_relative_pos = "RIGHT";
}
else if (O <= ax && ax <= P && N-1 <= ay && ay <= N + interact_range) 
|| (O <= bx && bx <= P && N-1 <= by && by <= N + interact_range){
	player_relative_pos = "DOWN";
}
else if (O - interact_range <= bx && bx <= O && M <= by && by <= N) 
|| (O - interact_range <= dx && dx <= O && M <= dy && dy <= N) {
	player_relative_pos = "LEFT";
}
else{
	player_relative_pos = ""
}
player_facing_self =
(player_relative_pos == "LEFT" && obj_player.sprite_index == obj_player.sprite[RIGHT]) 
|| (player_relative_pos == "RIGHT" && obj_player.sprite_index == obj_player.sprite[LEFT]) 
|| (player_relative_pos == "UP" && obj_player.sprite_index == obj_player.sprite[DOWN]) 
|| (player_relative_pos == "DOWN" && obj_player.sprite_index == obj_player.sprite[UP]);
// if player_facing_self{
// 	show_debug_message(player_relative_pos);
// }