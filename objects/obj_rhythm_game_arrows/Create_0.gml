QTE = true;
default_pixel_font = font_add("joystix monospace.otf", 28, false, false, 32, 128);
max_misses = 0;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
current_fps = game_get_speed(gamespeed_fps);
game_set_speed(240, gamespeed_fps)
left_character_silhouette = spr_bobby_silhouette;
right_character_silhouette = spr_grace_silhouette;
left_character_x = 0;
right_character_x = 200;
character_y = 20;
beat_timer  = 0;
r1_arrow_y = 44;
r2_arrow_y = 82;
r3_arrow_y = 122;
flag = false;
left_border = 78;
rhythm_line_x = left_border+20;
right_border = 220;
tempo = 90;
block_speed = 0;
player_score = 0;
beat = 0;
bar = 0;
arrows = array_create(0);
last_arrow_dir = 0
stop_rhythm_game = false;
for (var i = 0; i < 8; i++){
	array_push(arrows,[1,0,0,1,0,0,1,0,0,1,1,0,1,0,1,0]);
}
     