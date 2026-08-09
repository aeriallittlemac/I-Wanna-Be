xdiff = obj_player.x - interact_point_y;
ydiff = obj_player.y - interact_point_y - 2;

detection = ((xdiff*xdiff/7)+(ydiff*ydiff/5)) < oval_detection_scale*sqr(image_xscale/CLASSROOM_CHARACTER_SCALE);
var in_range =  detection && !global.cutscene && 
!global.in_dialogue && !global.timed_dialogue
&& !global.in_hints && !global.QTE;

if in_range && global.npc_in_interaction == noone{
	global.npc_in_interaction = self;
}
icon = in_range && global.npc_in_interaction == self && !global.interactable_in_range;

if icon && keyboard_check_pressed(CONFIRM_ACTION){
	if global.day == 2{
		game_NewDialogue(dialogue_grace_ghost_tuesday);
	}
}