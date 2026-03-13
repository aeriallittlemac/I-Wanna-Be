NewQuest(global.quest_list.band_practice, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
teleport_npc(obj_frenchie, school_2F, 375, 135, DOWN);
teleport_npc(obj_mcronald, school_2F, 450, 150, DOWN);
teleport_npc(obj_wei, school_2F, 350, 185, UP);
obj_npc_manager.npcs[0].initial_animation = spr_wei_rapping_1;
obj_npc_manager.npcs[5].initial_animation = spr_mcronald_keyboard_1;
obj_npc_manager.npcs[12].initial_animation = spr_frenchie_guitar_1;