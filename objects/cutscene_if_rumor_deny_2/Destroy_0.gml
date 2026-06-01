obj_mei.entityActivateScript = NewDialogue;
obj_mei.entityActivateArg = dialogue_meiseat;
//obj_mei.talk_priority = true;
obj_ashley.entityActivateScript = NewDialogue;
obj_ashley.entityActivateArg = dialogue_ashleyseat;
obj_brooklyn.entityActivateScript = NewDialogue;
obj_brooklyn.entityActivateArg = dialogue_brooklynseat;
game_wait(0.8);
set_QTE_bgm(sewing_club_happy);
instance_create_depth(0,0,0)