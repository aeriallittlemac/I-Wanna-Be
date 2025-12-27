QTE = true;
default_pixel_font = font_add("joystix monospace.otf", 28, false, false, 32, 128);
misses = 0;
max_misses = 0;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
current_fps = game_get_speed(gamespeed_fps);
game_set_speed(240, gamespeed_fps)
left_character_silhouette = spr_bobby_silhouette;
right_character_silhouette = spr_grace_silhouette;
character_frame_rate = 12;
character_anim_frame = 0;

left_character_x = 0;
right_character_x = 200;
character_y = 20;
beat_timer = 0; 
r1_arrow_y = 44;
r2_arrow_y = 82;
r3_arrow_y = 122;
flag = false;
start = false;
stop_rhythm_game = false;
destroy_rhythm_game = false;
left_border = 78;
rhythm_line_x = left_border+20;
right_border = 220;
tempo = 90;
block_speed = 0;
block_speed_multiplier = 6;
player_score = 0;
target_score = 0;
//song_timer = 0;
win_cutscene_object = noone;
lose_cutscene_object = noone;
beat = 0;
bar = 0;
arrows = array_create(0);
last_arrow_dir = 0

bgm_runtime_half_bars = round(obj_music_manager.song_current_runtime/(120/tempo));
start_time = (bgm_runtime_half_bars+1)*(120/tempo);
offset_time =  (right_border - rhythm_line_x)*(tempo/240)*block_speed_multiplier//(bgm_runtime_half_bars)*(120/tempo) - obj_music_manager.song_current_runtime;


function calculate_start_time(){
	bgm_runtime_half_bars = round(obj_music_manager.song_current_runtime/(120/tempo));
	show_debug_message(obj_music_manager.song_current_runtime);
	show_debug_message(bgm_runtime_half_bars);
	start_time = (bgm_runtime_half_bars+1)*(120/tempo);
	show_debug_message("start time:");
	show_debug_message(start_time);
	offset_time = 1/((tempo/240)*block_speed_multiplier*(game_get_speed(gamespeed_fps)/current_fps))
	show_debug_message(offset_time);
}

for (var i = 0; i < 8; i++){
	array_push(arrows,[1,0,0,1,0,0,1,0,0,1,1,0,1,0,1,0]);
}

enemy_stun_fps = 3;
enemy_stun_frame = 0;
enemy_stun_frames = 4;
function enemy_hit(){
	show_debug_message("enemy_hiy");
	alarm[2] = 1;
}
		
     