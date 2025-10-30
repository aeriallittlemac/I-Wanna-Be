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
possibility = 0
if B-A < P-O{
	if (B < P && A > O){
		if C >= N && C <= N + interact_range{
			player_relative_pos = "DOWN";
			possibility = 1
		}
		else if D <= M && D >= M - interact_range{
			player_relative_pos = "UP";
			possibility = 2
		}
	}
}
else{
	if (P < B && O > A){
		if C >= N && C <= N + interact_range{
			player_relative_pos = "DOWN";
			possibility = 3
		}
		else if D <= M && D >= M - interact_range{
			player_relative_pos = "UP";
			possibility = 4
		}
	}
}


if D-C < N-M{
	if (D < N && C > M){
		if A >= P && A <= P + interact_range{
			player_relative_pos = "RIGHT";
			possibility = 5
		}
		else if B <= O && B >= O - interact_range{
			player_relative_pos = "LEFT";
			possibility = 6
		}
	}
}
else{
	if  (N < D && M > C){
		if A >= P && A <= P + interact_range{
			player_relative_pos = "RIGHT";
			possibility = 7
		}
		else if B <= O && B >= O - interact_range{
			player_relative_pos = "LEFT";
			possibility = 8
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