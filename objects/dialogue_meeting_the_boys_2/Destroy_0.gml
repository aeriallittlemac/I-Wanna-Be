event_inherited();
reverse_mcronalds_lighting();
var inst = instance_create_depth(0, 0, 0, obj_time_skip);
with inst{
	target_rm = school_1F;
	target_x = 1165;
	target_y = 107;
	cutscene = cutscene_wei_chat_after_class;
	skip_message = "Hours \nlater...";
}
audio_stop_all();
audio_play_sound(sfx_school_bell, 1, false);
global.game_time = "3:30 pm";
teleport_npc(obj_wei, school_1F, 1115, 107, RIGHT);