TEXTBOX_DEFAULT = obj_textbox_mock_0;
NAMEBOX_DEFAULT = obj_namebox_mock_0;

BOUNDS_DEFAULT = obj_bounds_mock_0;
NAME_DEFAULT = obj_name_mock_0;

PORTRAIT_DEFAULT = obj_portrait_mock_0;

PUNCTUATION_DELAY_MILLISECONDS = 200;
TYPIST_DEFAULT = scribble_typist().in(1, 0)
	.character_delay_add(",", PUNCTUATION_DELAY_MILLISECONDS)
	.character_delay_add(".", PUNCTUATION_DELAY_MILLISECONDS)
	.character_delay_add("!", PUNCTUATION_DELAY_MILLISECONDS)
	.character_delay_add("?", PUNCTUATION_DELAY_MILLISECONDS);

SCALE = 810 / RESOLUTION_W;
ASYNC_PAGE_DELAY_SECONDS = 1.5;
minimap_scale = room_get_viewport(room, 0)[3] / RESOLUTION_W;

layout = {};
text_element = noone;
name_element = noone;
active = false;
identified = false;
is_async = false;
async_waiting = false;

queue_chain = array_create(0);

scribble_font_set_default("fnt_joystix_monospace");

previously_active = false;

function textbox_unnamed(text, sfx_speech=sfx_bobby_speech, async=false, textbox=TEXTBOX_DEFAULT, bounds=BOUNDS_DEFAULT, typist=TYPIST_DEFAULT) {
	if (active) {
		array_insert(queue_chain, 0, {
			identified: false, 
			params: [text, sfx_speech, async, textbox, bounds, typist]
		});
		exit;
	}
	
	active = true;
	is_async = async;
	textbox_key = object_get_name(textbox);
	bounds_key = object_get_name(bounds);
	textbox_sprite = object_get_sprite(textbox);
	text_element = scribble(text).wrap(layout[$bounds_key].width * SCALE, layout[$bounds_key].height * SCALE).page(0);
	active_typist = typist.reset().sound_per_char([sfx_speech], 1, 1);
}

function textbox(text, name, portrait_sprite, sfx_speech=sfx_bobby_speech, async=false, textbox=TEXTBOX_DEFAULT, namebox=NAMEBOX_DEFAULT, bounds=BOUNDS_DEFAULT, name_bounds=NAME_DEFAULT, portrait_bounds=PORTRAIT_DEFAULT, typist=TYPIST_DEFAULT) {
	if (active) {
		array_insert(queue_chain, 0, {
			identified: true, 
			params: [text, name, portrait_sprite, sfx_speech, async, textbox, namebox, bounds, name_bounds, portrait_bounds, typist]
		});
		exit;
	}
	
	active = true;
	identified = true;
	is_async = async;
	textbox_key = object_get_name(textbox);
	namebox_key = object_get_name(namebox);
	bounds_key = object_get_name(bounds);
	name_bounds_key = object_get_name(name_bounds);
	textbox_sprite = object_get_sprite(textbox);
	namebox_sprite = object_get_sprite(namebox);
	text_element = scribble(text).wrap(layout[$bounds_key].width * SCALE, layout[$bounds_key].height * SCALE).page(0);
	name_element = scribble(name).scale_to_box(layout[$name_bounds_key].width * SCALE, layout[$name_bounds_key].height * SCALE);
	active_portrait_sprite = portrait_sprite;
	portrait_bounds_key = object_get_name(portrait_bounds);
	active_typist = typist.reset().sound_per_char([sfx_speech], 1, 1);
}

active_dialogue = noone;

function close_dialogue() {
	active = false;
	identified = false;
	is_async = false;
	
	if (array_length(queue_chain) > 0) {
		var next = array_pop(queue_chain);
		if (next.identified) {
			textbox(next.params[0], next.params[1], next.params[2], next.params[3], next.params[4], next.params[5], next.params[6], next.params[7], next.params[8], next.params[9], next.params[10]);
		} else {
			textbox_unnamed(next.params[0], next.params[1], next.params[2], next.params[3], next.params[4], next.params[5]);
		}
	} else {
		instance_destroy(active_dialogue);
	}
}
