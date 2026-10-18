next_beat_index = 0;
music_started = false;
music_buffer_time = 0;
QTE = true;
default_pixel_font = font_add("joystix monospace.otf", 28, false, false, 32, 128);
misses = 0;
max_misses = 0;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
current_fps = game_get_speed(gamespeed_fps);
game_set_speed(240, gamespeed_fps)
bgm_instance = song_im_sorry;          // will hold the playing sound's instance id
audio_resync_timer = 0;
audio_resync_interval = 1;  // seconds between resyncs; 0.5–2 is a reasonable range

left_character_silhouette = spr_bobby_silhouette;
right_character_silhouette = spr_grace_portrait_default;
character_frame_rate = 12;
character_anim_frame = 0;

left_character_x = 50;
right_character_x = 210;
character_y = 110;
beat_timer = 0; 
r1_arrow_y = 44;
r2_arrow_y = 82;
r3_arrow_y = 122;
flag = false;
stop_rhythm_game = false;
destroy_rhythm_game = false;
left_border = 78;
rhythm_line_x = left_border+20;
right_border = 220;
tempo = 90;
block_speed = 0;
block_speed_multiplier = 5;
player_score = 0;
target_score = 0;
//song_timer = 0;
win_cutscene_object = noone;
lose_cutscene_object = noone;
beat = 0;
bar = 0;
arrows = array_create(0);
last_arrow_dir = 0


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

function calculate_music_buffer_time(){
	start_bar = 4;         // n = whatever bar you want the first arrow on (0-indexed, so bar 0 is the first bar)
	//bar = start_bar;
	beat = 0;
	next_beat_index = start_bar*16;
	music_buffer_time = 240/(tempo*block_speed_multiplier); // = travel_time, so the pre-roll covers one full arrow travel
}
pre_music_timer = 0;
