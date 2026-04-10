if !grabbing{
	var caller = self
	var inst = instance_create_depth(0,0,depth-1, obj_grabbable_box);
	with inst{
		choice_pixel_font = caller.choice_pixel_font
		timer_pixel_font = caller.timer_pixel_font
		choice_sep = caller.choice_sep;
		choice_width = caller.choice_width;
		choice_box_margins = caller.choice_box_margins;
		choice_x = caller.choices[caller.choice_index].choice_x;
		choice_y = caller.choices[caller.choice_index].choice_y;
		choice_text = caller.choices[caller.choice_index].choice_text;
		answer = caller.choice_index-1;
	}
}
grabbing = !grabbing;