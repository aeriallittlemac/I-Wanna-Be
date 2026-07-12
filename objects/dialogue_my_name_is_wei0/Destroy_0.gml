obj_npc_manager.npcs[WEI].introduced = true;
wait(0.25);
var y_margin = abs(obj_player.y - obj_wei.y)
move_to_pos(1, 1, obj_player.x - y_margin, obj_wei.y)
npc_move_to_pos(obj_wei, 1, 0, 610, obj_wei.y);
move_to_pos(1, 0, 610, obj_player.y)
npc_move_to_pos(obj_wei, 0, 1, obj_wei.x, 80);
teleport_npc(obj_wei, school_2F, 700, 114, LEFT);
player_dialogue(dialogue_follow_wei_up);
global.cutscene = true;
audio_play_sound(Untitled_49, 0, false);
instance_create_depth(0,0,0, obj_title);