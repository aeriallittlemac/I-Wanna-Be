if !global.cutscene && !global.in_dialogue{
default_pixel_font = font_add("joystix monospace.otf", font_size, false, false, 32, 128);
font_add_enable_aa(false);
draw_set_colour(font_color);
draw_set_font(default_pixel_font);
draw_text(20, 20, "Current Objective: " +sign_text);


timer -=1;
if timer <=0{
	image_alpha -= 0.02;
	if image_alpha<=0{
		instance_destroy(self);
	}
}

}