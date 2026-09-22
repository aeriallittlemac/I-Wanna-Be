event_inherited();
reverse_mcronalds_lighting();
var inst = instance_create_depth(0, 0, 0, obj_time_skip);

with inst{
	target_rm = school_1F;
	target_x = 865;
	target_y = 107;
	cutscene = cutscene_wei_chat_after_club;
	skip_message = "Hours \nlater...";
}
audio_stop_all();
// set tme?
audio_play_sound(sfx_school_bell, 1, false);
teleport_npc(obj_wei, school_1F, 815, 107, RIGHT);
teleport_npc(obj_ashley, noone, 0, 0, DOWN);
teleport_npc(obj_mei, noone, 0, 0, DOWN);
teleport_npc(obj_brooklyn, noone, 0, 0, DOWN);
teleport_npc(obj_grace, noone, 0, 0, DOWN);