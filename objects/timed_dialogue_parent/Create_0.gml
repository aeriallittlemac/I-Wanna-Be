timed_textbox_reset();
global.timed_dialogue = true;
obj_timed_textbox.cur_dialogue = self;
instance_create_depth(0,0,0, obj_dialogue_character);