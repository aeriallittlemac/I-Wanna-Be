event_inherited();
previously_in_range = false;
talk_priority = false;
oval_detection_scale = 160;
detection = false;
icon = false;
xspeed = array_create(0);
yspeed = array_create(0);
run_speed_multiplier = 2.5;
sequences = array_create(0);
target_x = array_create(0);
target_y = array_create(0);
npc_dialogues = array_create(0);
previous_xspeed = 0;
previous_yspeed = 0;
previous_y_pos = STANDARD_Y_POS;
change_scale = 0.008;
sprite[RIGHT] = noone;
sprite[UP] = noone;
sprite[LEFT] = noone;
sprite[DOWN] = noone;
face = DOWN
face_matrix = [
	[UP, LEFT, DOWN], 
	[UP, DOWN, DOWN], 
	[UP, RIGHT, DOWN]
];
player_reach = 120;
timer = array_create(0);
classroom_mode = false;
skip_sequence = false;
sfx = array_create(0);
animation = array_create(0);
speech_bubbles = array_create(0)
active_speech_bubbles = array_create(0)

if  instance_number(self.object_index) > 1{
	instance_destroy(self);
}
player_relative_pos = "";
function setPlayerFace(){
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
if abs(max(A-P, M-D, O-B, C-N) - (A-P))<0.001{
	player_relative_pos = "RIGHT"
}
else if abs(max(A-P, M-D, O-B, C-N) - (M-D))<0.001{
	player_relative_pos = "UP"
}
else if abs(max(A-P, M-D, O-B, C-N) - (O-B))<0.001{
	player_relative_pos = "LEFT"
}
else if abs(max(A-P, M-D, O-B, C-N) - (C-N))<0.001{
	player_relative_pos = "DOWN"
}
show_debug_message(player_relative_pos);

last_x = x;
last_y = y;
last_face = face;


}