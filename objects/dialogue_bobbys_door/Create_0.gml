event_inherited();
venture = false;

if global.day == 1{
	if global.night{
		if obj_minimap.inv[0] == global.quest_list.go_back_to_sleep{
			obj_scribble.textbox_unnamed(
				@"Bobby, please go to sleep.
				"
			);
			
		}
		else{
			obj_scribble.textbox_unnamed(
				@"You venture out, not knowing what's in store...
				"
			);
			venture = true;
		}
	}
	else{
		obj_scribble.textbox_unnamed(
			@"Try the bed, it's pretty comfy.
			"
		);
	}
}
else if global.night{
	obj_scribble.textbox_unnamed(
		@"Bobby, please go to sleep.
		"
	);
}
else {
	if global.night{
	obj_scribble.textbox_unnamed(
		@"You answer the door...
		"
	);
	venture = true;
	}
}
