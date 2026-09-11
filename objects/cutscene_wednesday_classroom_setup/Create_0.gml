obj_brooklyn.entityActivateArg = dialogue_brooklynseat_classroom_lab;
obj_mei.entityActivateArg = dialogue_wednesday_classroom_mei_n_wei;
obj_ashley.entityActivateArg = dialogue_ashleyseat_classroom_lab;

obj_wei.entityActivateArg = dialogue_wednesday_classroom_mei_n_wei;
//obj_mcronald.entityActivateArg = dialogue_mcronaldseat_classroom_lab;

obj_drake.entityActivateArg = dialogue_drakeseat_classroom_lab;
set_QTE_bgm(gambinos_theme);
game_wait(1);
game_NewDialogue(dialogue_wednesday_classroom_setup)
instance_destroy(self);