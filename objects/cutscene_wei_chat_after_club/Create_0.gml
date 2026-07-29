obj_player.sprite_index = obj_player.sprite[LEFT];
obj_player.face = LEFT;
set_QTE_bgm(weis_theme)
game_wait(1.5);
game_NewDialogue(dialogue_wei_chat_after_club);
instance_destroy(self);