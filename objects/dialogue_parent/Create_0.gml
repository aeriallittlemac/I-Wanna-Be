textbox_reset();
global.in_dialogue = true;
obj_textbox.cur_dialogue = self;
instance_create_depth(0,0,0, obj_dialogue_character);