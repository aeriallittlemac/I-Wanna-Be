obj_grace.entityActivateArg = dialogue_graceseat_classroom_lab;
obj_ashley.entityActivateArg = dialogue_ashleyseat_classroom_lab;
obj_frenchie.entityActivateArg = dialogue_frenchieseat_classroom_lab;

obj_job.entityActivateArg = dialogue_jobseat_classroom_lab;

//deal with these later!
obj_mcronald.entityActivateArg = dialogue_mcronaldseat_classroom_lab;
//obj_mei.entityActivateArg = dialogue_meiseat_classroom_lab;

obj_drake.entityActivateArg = dialogue_drakeseat_classroom_lab;
obj_guy.entityActivateArg = dialogue_guy_classroom_lab;
game_wait(1);
game_NewDialogue(dialogue_brooklyn_tuesday_lab_setup)
instance_destroy(self);