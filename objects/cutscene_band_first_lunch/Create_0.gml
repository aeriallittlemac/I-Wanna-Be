obj_player.face = UP;
obj_player.sprite_index = obj_player.sprite[UP];
npc_animate(obj_frenchie, spr_frenchie_eating)
npc_animate(obj_mcronald, spr_mcronald_eating)
npc_animate(obj_wei, spr_wei_eating)
hint_obtain(global.hints.if_rumor_choose);
game_wait(3);
game_NewDialogue(dialogue_band_first_lunch);
instance_destroy(self);