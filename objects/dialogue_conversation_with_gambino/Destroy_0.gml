event_inherited();
var inst = instance_create_depth(0,0,0,obj_stretched_flashing_scene);
with inst{
	sprite = spr_sewing_club_teddy_bear_scene;
}
game_wait(2);
game_NewDialogue(dialogue_conversation_with_gambino_1);
