qtext = "";
qanswer = false;
if string_char_at(qtext, 0) >= "0" && string_char_at(qtext, 0) <= "9"{
	default_pixel_font = font_add("joystix monospace.otf", 32, false, false, 32, 128);
}
else{
	default_pixel_font = font_add("joystix monospace.otf", 26, false, false, 32, 128);
}
collision_length = 0;
collision_height = 0;

qspeed = 2;
qtext_sep = 50;
qtest_width = 500;
text_scale = 0.3;
//y_offset = 50;