TEXTBOX_DEFAULT = obj_textbox_mock_0;
NAMEBOX_DEFAULT = obj_namebox_mock_0;

BOUNDS_DEFAULT = obj_bounds_mock_0;
NAME_DEFAULT = obj_name_mock_0;

PORTRAIT_DEFAULT = obj_portrait_mock_0;

TYPIST_DEFAULT = scribble_typist().in(1, 0);

SCALE = 810 / RESOLUTION_W;

layout = {};
text_element = noone;
name_element = noone;
active = false;
identified = false;

scribble_font_set_default("fnt_joystix_monospace");

function textbox_unnamed(text, sfx_speech=sfx_bobby_speech, textbox=TEXTBOX_DEFAULT, bounds=BOUNDS_DEFAULT, typist=TYPIST_DEFAULT) {
	active = true;
	textbox_key = object_get_name(textbox);
	bounds_key = object_get_name(bounds);
	textbox_sprite = object_get_sprite(textbox);
	text_element = scribble(text).wrap(layout[$bounds_key].width * SCALE, layout[$bounds_key].height * SCALE);
	active_typist = typist.reset().sound_per_char([sfx_speech], 1, 1);
}

function textbox(text, name, portrait_sprite, sfx_speech=sfx_bobby_speech, textbox=TEXTBOX_DEFAULT, namebox=NAMEBOX_DEFAULT, bounds=BOUNDS_DEFAULT, name_bounds=NAME_DEFAULT, portrait_bounds=PORTRAIT_DEFAULT, typist=TYPIST_DEFAULT) {
	active = true;
	identified = true;
	textbox_key = object_get_name(textbox);
	namebox_key = object_get_name(namebox);
	bounds_key = object_get_name(bounds);
	name_bounds_key = object_get_name(name_bounds);
	textbox_sprite = object_get_sprite(textbox);
	namebox_sprite = object_get_sprite(namebox);
	text_element = scribble(text).wrap(layout[$bounds_key].width * SCALE, layout[$bounds_key].height * SCALE);
	name_element = scribble(name).scale_to_box(layout[$name_bounds_key].width * SCALE, layout[$name_bounds_key].height * SCALE);
	active_portrait_sprite = portrait_sprite;
	portrait_bounds_key = object_get_name(portrait_bounds);
	active_typist = typist.reset().sound_per_char([sfx_speech], 1, 1);
}

active_dialogue = noone;

function close_dialogue() {
	instance_destroy(active_dialogue);
	active = false;
	identified = false;
}
