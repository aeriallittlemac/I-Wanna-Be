if obj_minimap.map_visible{
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