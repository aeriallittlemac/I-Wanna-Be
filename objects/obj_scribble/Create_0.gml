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
identified = 0;
is_async = false;
async_waiting = false;

queue_chain = array_create(0);

scribble_font_set_default("fnt_joystix_monospace");

previously_active = false;

function textbox_unnamed(text, sfx_speech=sfx_bobby_speech, async=false, textbox=TEXTBOX_DEFAULT, bounds=BOUNDS_DEFAULT, typist=TYPIST_DEFAULT, choices=[]) {
	if (active) {
		array_insert(queue_chain, 0, {
			identified: 0, 
			params: [text, sfx_speech, async, textbox, bounds, typist, choices]
		});
		exit;
	}
	
	keyboard_clear(CONFIRM_ACTION);
	
	active = true;
	is_async = async;
	textbox_key = object_get_name(textbox);
	bounds_key = object_get_name(bounds);
	textbox_sprite = object_get_sprite(textbox);
	text_element = scribble(text).wrap(layout[$bounds_key].width * SCALE, layout[$bounds_key].height * SCALE).page(0);
	active_typist = typist.reset().sound_per_char([sfx_speech], 1, 1);
	
	create_choices(choices);
}

function textbox(text, name, portrait_sprite, sfx_speech=sfx_bobby_speech, async=false, textbox=TEXTBOX_DEFAULT, namebox=NAMEBOX_DEFAULT, bounds=BOUNDS_DEFAULT, name_bounds=NAME_DEFAULT, portrait_bounds=PORTRAIT_DEFAULT, typist=TYPIST_DEFAULT, choices=[]) {
	if (active) {
		array_insert(queue_chain, 0, {
			identified: 1, 
			params: [text, name, portrait_sprite, sfx_speech, async, textbox, namebox, bounds, name_bounds, portrait_bounds, typist, choices]
		});
		exit;
	}
	
	keyboard_clear(CONFIRM_ACTION);
	
	active = true;
	identified = 1;
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

	create_choices(choices);
}

function textbox_converse(text, name, portrait_sprites_bounds, sfx_speech=sfx_bobby_speech, async=false, textbox=TEXTBOX_DEFAULT, namebox=NAMEBOX_DEFAULT, bounds=BOUNDS_DEFAULT, name_bounds=NAME_DEFAULT, typist=TYPIST_DEFAULT, choices=[]) {
	if (active) {
		array_insert(queue_chain, 0, {
			identified: 2, 
			params: [text, name, portrait_sprites_bounds, sfx_speech, async, textbox, namebox, bounds, name_bounds, typist, choices]
		});
		exit;
	}
	
	keyboard_clear(CONFIRM_ACTION);
	
	active = true;
	identified = 2;
	is_async = async;
	textbox_key = object_get_name(textbox);
	namebox_key = object_get_name(namebox);
	bounds_key = object_get_name(bounds);
	name_bounds_key = object_get_name(name_bounds);
	textbox_sprite = object_get_sprite(textbox);
	namebox_sprite = object_get_sprite(namebox);
	text_element = scribble(text).wrap(layout[$bounds_key].width * SCALE, layout[$bounds_key].height * SCALE).page(0);
	name_element = scribble(name).scale_to_box(layout[$name_bounds_key].width * SCALE, layout[$name_bounds_key].height * SCALE);
	active_portrait_sprites_bounds = array_create(0);
	for (var i = 0; i < array_length(portrait_sprites_bounds); ++i) {
		var portrait_sprite_bound = portrait_sprites_bounds[i];
		array_push(active_portrait_sprites_bounds, [portrait_sprite_bound[0], object_get_name(portrait_sprite_bound[1])]);
	}
	active_typist = typist.reset().sound_per_char([sfx_speech], 1, 1);

	create_choices(choices);
}

function draw_portrait(sprite, bounds_key) {
	var portrait_scale = layout[$bounds_key].height * SCALE / sprite_get_height(sprite);
	var x_offset = sprite_get_xoffset(sprite) * portrait_scale;
	var y_offset = sprite_get_yoffset(sprite) * portrait_scale;
	draw_sprite_ext(sprite, -1, layout[$bounds_key].x * SCALE + x_offset, layout[$bounds_key].y * SCALE + y_offset, portrait_scale, portrait_scale, 0, c_white, 1);
}

active_dialogue = noone;

function close_dialogue() {
	audio_play_sound(sfx_move_select, 1, false);
	
	active = false;
	identified = 0;
	is_async = false;
	
	active_choices = noone;
	active_choiec_idx = 0;
	
	if (array_length(queue_chain) > 0) {
		var next = array_pop(queue_chain);
		if (next.identified == 0) {
			textbox_unnamed(next.params[0], next.params[1], next.params[2], next.params[3], next.params[4], next.params[5], next.params[6]);
		} else if (next.identified == 1) {
			textbox(next.params[0], next.params[1], next.params[2], next.params[3], next.params[4], next.params[5], next.params[6], next.params[7], next.params[8], next.params[9], next.params[10], next.params[11]);
		} else if (next.identified == 2) {
			textbox_converse(next.params[0], next.params[1], next.params[2], next.params[3], next.params[4], next.params[5], next.params[6], next.params[7], next.params[8], next.params[9], next.params[10]);
		}
	} else {
		instance_destroy(active_dialogue);
	}
}

active_choices = noone;
active_choice_idx = 0;

function Choice(_text, _textbox, _bounds, _cb, _typist) constructor {
	textbox_key = object_get_name(_textbox);
	bounds_key = object_get_name(_bounds);
	textbox_sprite = object_get_sprite(_textbox);
	text_element = scribble(_text).wrap(
		obj_scribble.layout[$bounds_key].width * obj_scribble.SCALE, 
		obj_scribble.layout[$bounds_key].height * obj_scribble.SCALE
	).page(0);
	cb = _cb;
	typist = _typist;
}

function create_choices(choices) {
	active_choice_idx = 0;
	if (array_length(choices) == 0) {
		active_choices = noone;
		return;
	}
	active_choices = [];
	var count = array_length(choices);
	for (var i = 0; i < count; ++i) {
		var c = choices[i];
		var typist = variable_struct_exists(c, "typist") ? c.typist : scribble_typist().in(1, 0);
		array_push(active_choices, new Choice(c.text, c.textbox, c.bounds, c.cb, typist));
	}
}
