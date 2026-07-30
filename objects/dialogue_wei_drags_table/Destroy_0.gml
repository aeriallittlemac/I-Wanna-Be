event_inherited();
audio_play_sound(sfx_drag_table, 1, false);
INST_BOBBYS_TABLE.x = 70;
INST_BOBBYS_TABLE.y = 86;
INST_BOBBYS_TABLE.depth = -INST_BOBBYS_TABLE.bbox_bottom
instance_destroy(inst_7299E4D1);
var inst = instance_create_depth(0,0,0,obj_black_screen);
obj_wei.x = 120;
obj_wei.y = 78;
obj_wei.facing = DOWN;
obj_wei.sprite_index = obj_wei.sprite[DOWN];

obj_player.x = 69;
obj_player.y = 110;
obj_player.facing = UP;
obj_player.sprite_index = obj_player.sprite[UP];
with inst{
	screen_duration = 1;
	screen_cutscene = dialogue_meeting_the_boys;
}
game_wait(3);