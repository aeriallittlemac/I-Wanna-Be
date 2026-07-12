point_spawn_interval = 1000;
pair_spawn_interval = 100;
pair_spawn_que = array_create(0);
point_spawn_x = [138, 166, 202, 302, 312, 331, 331]
point_spawn_y = [288, 288, 313, 325, 316, 279, 249]
connections_drawn = [0, 0, 0, 0, 0, 0];
original_bgm_gain = audio_sound_get_gain(global.bgm);
QTE_bgm = qte_bgm;
audio_sound_gain(global.bgm, 0, 100);
if !audio_is_playing(QTE_bgm){
audio_play_sound(QTE_bgm, 1, true);
}
audio_sound_gain(QTE_bgm, 0, 0);
audio_sound_gain(QTE_bgm, 0.4, 100);

win_cutscene = dialogue_QTE_one;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
mog_scale = 10;
character_silhouette_left = spr_mcronald_portrait_irritated;
character_silhouette_right = spr_wei_portrait_confusion_silhouette;
character_anchor_x = 105;
character_y = 150;

character_x = character_anchor_x;
character_slide_target = 160;
character_slide_speed = 1;
left_character_size_offset = 1.5;
right_character_x_offset = 25;

minigame_text = "Connect the jawline."

minigame_text_pixel_font = font_add("joystix monospace.otf", 12, false, false, 64, 128);
timer_pixel_font = font_add("joystix monospace.otf", 25, false, false, 64, 128);


current_fps = game_get_speed(gamespeed_fps);
game_set_speed(240, gamespeed_fps);
start = false;

alarm[0] = 1;
current_camera_target = camera_get_view_target(view_camera[0]);
camera_set_view_target(view_camera[0], obj_player);
current_camera_y = camera_get_view_y(view_camera[0]);
current_camera_height = camera_get_view_height(view_camera[0]);
current_camera_width = camera_get_view_width(view_camera[0]);
global.QTE = true;

target_camera_height = 80;
character_target_scale = 2;
character_scale = target_camera_height/current_camera_height*character_target_scale;
camera_zoom_speed_height = 2;
camera_zoom_speed_width = camera_zoom_speed_height/current_camera_height*current_camera_width;


alarm[3] = 100;

a=0;
b=0;
c=0;
d=0;
original_shake_delay =70;
shake_delay = original_shake_delay;
shake_accel = 8;
//array_push(choices, text_elements.throwable_one);
//array_push(choices, text_elements.throwable_two);

