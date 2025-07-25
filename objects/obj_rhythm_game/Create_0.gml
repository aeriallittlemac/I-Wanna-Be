minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
current_fps = game_get_speed(gamespeed_fps);
game_set_speed(240, gamespeed_fps)
//zoom = 1.4;
//camera_set_view_border(view_camera[0], camera_get_view_border_x(view_camera[0]), 9999)
//original_camera_target = camera_get_view_target(view_camera[0]);
//game_camera_change_settings(obj_player, 5)
//camera_set_view_size(view_camera[0],RESOLUTION_W/zoom,152/zoom);
default_pixel_font = font_add("joystix monospace.otf", 28, false, false, 32, 128);
font_add_enable_aa(false);
player_score = 0;
target_score = 0;
song_timer = 0;
win_cutscene_object = noone;
lose_cutscene_object = noone;
line_speed_dir = 1;
unit = 14;
tempo = 110;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
rhythm_line_x_pos = 215;
instance_create_depth(x,y,depth-1,obj_rhythm_line);
kick_main_rhythm = [1,0,1,0,0,0,1,0,0,0,1,0,0,1,0,0];
snare_main_rhythm = [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0];
kick_main_fill = [1,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0];
snare_main_fill = [0,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0];
kick_ending_rhythm = [1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0];
snare_ending_rhythm = snare_main_rhythm;
song = hip_hop_sample;
stop = 1;
display_player_score_string = "0000";
temp_input = 0;
temp_input_type = "";
kick_offset_x = 22;
kick_offset_y = 28;
snare_offset_x = kick_offset_x;
snare_offset_y = 61;
misses = 0;
kick_sound = noone;
snare_sound = noone;
song_started = false;
kick_sprite = spr_rhythm_block_kick_grace;
snare_sprite = spr_rhythm_block_snare_grace;
//intro
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

//main (verse)
for (var j=0; j<2; j++){
	for (var i = 0; i < 3; i++){
		array_push(beatmap_kicks, kick_main_rhythm);
		array_push(beatmap_snares, snare_main_rhythm);
	}
	array_push(beatmap_kicks, kick_main_fill);
	array_push(beatmap_snares, snare_main_fill);
}

//bridge(intro)

array_push(beatmap_kicks, [1,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0]);
array_push(beatmap_kicks, [1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

//ending (chorus)
for (var i = 0; i < 6; i++){
	array_push(beatmap_kicks, kick_ending_rhythm);
	array_push(beatmap_snares, snare_ending_rhythm);
}
array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0]);
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);


bars = 0;
first_beat = false;

function endofbar(){
	var bar_length = 240/tempo;
	if song_timer >= bars * bar_length{
		return true;
	}
}
if global.rap_battle{
	y = 70;
}
else{
	y = 0;
}
obj_player.image_blend = c_black;