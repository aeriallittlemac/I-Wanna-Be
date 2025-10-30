A = obj_player_hitbox.bbox_left;
B = obj_player_hitbox.bbox_right;
C = obj_player_hitbox.bbox_top;
D = obj_player_hitbox.bbox_bottom;

//player col width B-A
//player col height C-D

O = bbox_left;
P = bbox_right;
M = bbox_top;
N = bbox_bottom;


player_relative_pos = "";
if B-A < P-O{
	if ((A > O && A < P)||(B > O && B < P)){
		if C >= N - interact_range && C <= N + interact_range{
			player_relative_pos = "DOWN";
			opt = 1;
		}
		else if D <= M + interact_range && D >= M - interact_range{
			player_relative_pos = "UP";
		}
	}
}
else{
	if ((P > A && P < B)||(O > A && O < B)){
		if C >= N - interact_range && C <= N + interact_range{
			player_relative_pos = "DOWN";
			opt = 2;
		}
		else if D <= M + interact_range && D >= M - interact_range{
			player_relative_pos = "UP";
		}
	}
}


if D-C < N-M{
	if ((C > M && C < N) || (D > M && D < N)){
		if A >= P - interact_range && A <= P + interact_range{
			player_relative_pos = "RIGHT";
		}
		else if B <= O + interact_range && B >= O - interact_range{
			player_relative_pos = "LEFT";
		}
	}
}
else{
	if  ((M > C && M < D) || (N > C && N < D)){
		if A >= P - interact_range && A <= P + interact_range{
			player_relative_pos = "RIGHT";
		}
		else if B <= O + interact_range && B >= O - interact_range{
			player_relative_pos = "LEFT";
		}
	}
}


	
	//else if (C > M || D < N){
	
	//}



//else{
//	player_relative_pos = ""
//}
player_facing_self =
(player_relative_pos == "LEFT" && obj_player.sprite_index == obj_player.sprite[RIGHT]) 
|| (player_relative_pos == "RIGHT" && obj_player.sprite_index == obj_player.sprite[LEFT]) 
|| (player_relative_pos == "UP" && obj_player.sprite_index == obj_player.sprite[DOWN]) 
|| (player_relative_pos == "DOWN" && obj_player.sprite_index == obj_player.sprite[UP]);