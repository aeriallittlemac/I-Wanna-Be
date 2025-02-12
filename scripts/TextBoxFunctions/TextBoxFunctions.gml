function scr_text(_text){
	array_push(obj_textbox.text,_text);
	if argument_count > 1{
		array_push(obj_textbox.speaker_sprite, argument[1]);
		array_push(obj_textbox.speaker_side, argument[2]);
	}
	else{
		array_push(obj_textbox.speaker_sprite, noone);
		array_push(obj_textbox.speaker_side, -1);
	}
	
}

function scr_option(_option, _link_id){
	obj_textbox.option[obj_textbox.option_number] = _option;
	obj_textbox.option_link_id[obj_textbox.option_number] = _link_id;
	obj_textbox.option_number++;
}

function textbox_reset(){
	obj_textbox.text = array_create(0);
	obj_textbox.speaker_sprite = array_create(0);
	obj_textbox.speaker_side = array_create(0);	
	obj_textbox.i=1;
	obj_textbox.j=0;
	obj_textbox.display_text = "";
	clear_options();
}

function clear_options(){
	obj_textbox.option = [""]
	obj_textbox.option_link_id = [-1];
	obj_textbox.option_number = 0;
	obj_textbox.option_pos = 0;
}

//function branch_textbox(dialogue, _text_id){
//	with(instance_create_layer(x, y, "textboxes", obj_textbox)){
//		script_execute(dialogue, _text_id)
//	}
//}