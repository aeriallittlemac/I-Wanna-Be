teleport_player(1128, 114, school_B1);
AddInstanceToActivate(inst_FIRST_BAND_PRACTICE);
teleport_npc(obj_wei, school_B1, 1032, 123, RIGHT);
teleport_npc(obj_guy, school_B1, 1290, 123, LEFT);
obj_guy.entityActivateScript = NewDialogue;
obj_guy.entityActivateArg = dialogue_guy_potion;
global.game_time = "11:00 am";