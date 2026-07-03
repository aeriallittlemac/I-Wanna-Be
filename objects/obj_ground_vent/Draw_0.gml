draw_self()
if sqr(obj_player.x - x) + sqr(obj_player.y - y) <= sqr(activate_range) && !global.in_dialogue && !global.QTE{
	draw_sprite(spr_vent_outline, -1, x, y);
	if keyboard_check_pressed(CONFIRM_ACTION){
		NewDialogue(activate_cutscene);
	}
}