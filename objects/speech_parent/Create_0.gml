sprite_index = bubble_sprite;
image_xscale = bubble_xscale;
image_yscale = bubble_yscale;
npc_speaker = noone;
speech_text = array_create(0);
text_progress = 0;

default_pixel_font = font_add("joystix monospace.otf", 28, false, false, 32, 128);
font_add_enable_aa(false);

function speak(text) {
	array_push(speech_text, text);
}
