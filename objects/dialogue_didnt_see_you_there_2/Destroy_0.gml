audio_play_sound(sfx_stomach_growl_1, 0, false);
var inst = instance_create_depth(obj_grace.x - 30, obj_grace.y - 15, OBJ_MAX_DEPTH, obj_white_text_overlay)
with inst{
	overlay_text = "Growwwwwwwwwwwwl";
	font_size = 5;
	text_timer = 0.1;
	real_text_last_timer = audio_sound_length(sfx_stomach_growl_2) - (string_length(overlay_text)*text_timer);
	text_last_timer = real_text_last_timer * room_speed;
}
game_wait(4);
game_NewDialogue(dialogue_didnt_see_you_there_3);