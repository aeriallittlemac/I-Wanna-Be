game_wait(2.5);
//eating sounds
audio_play_sound(sfx_chewing, 1, false);
var inst = instance_create_depth(obj_grace.x - 30, obj_grace.y - 15, OBJ_MAX_DEPTH, obj_white_text_overlay)
with inst{
	overlay_text = "Nom nom nom nom nom";
	font_size = 5;
	text_timer = 0.08;
	real_text_last_timer = 0;
	text_last_timer = real_text_last_timer * room_speed;
}
game_change_image_index(obj_burger_on_a_plate, 1)
game_NewDialogue(dialogue_you_hand_the_burger_2);