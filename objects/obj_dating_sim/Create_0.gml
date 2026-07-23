audio_stop_all();
alarm[0] = 1;
frame_x = -270;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
obj_vfx.effects.romance.start();
lives_left = 2;

game_wait(1);
game_NewDialogue(dialogue_brooklyn_dating_sim);

function loseLife(){
	lives_left--;
}