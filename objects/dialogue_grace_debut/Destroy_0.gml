event_inherited();
audio_stop_all();
set_QTE_bgm(graces_theme);
instance_create_depth(0,0,0,player_n_grace);
game_camera_change_settings(player_n_grace, 3)
npc_wait(obj_grace, 0.2);
npc_animate(obj_grace, obj_grace.sprite[UP]);
npc_wait(obj_grace, 0.2);
npc_animate(obj_grace, obj_grace.sprite[RIGHT]);
npc_wait(obj_grace, 0.2);
npc_animate(obj_grace, obj_grace.sprite[DOWN]);
game_wait(1.5);
game_NewDialogue(dialogue_grace_debut_1);