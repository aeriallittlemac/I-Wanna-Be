//not actually a dialogue object
QuestCompleted(global.quest_list.hot_pocket);
audio_play_sound(sfx_surprise_fx, 1, false);
obj_wei.face = RIGHT;
obj_wei.sprite_index = obj_wei.sprite[RIGHT]
game_wait(0.6);
game_NewDialogue(dialogue_wei_microwave_1);