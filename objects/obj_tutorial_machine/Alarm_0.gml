show_debug_message("print text!");
default_pixel_font = font_add("joystix monospace.otf", 24*4, false, false, 16, 128);
game_write_text(" Life...", 20, 20, default_pixel_font, c_black, 0.2, 2);
game_wait(2);
default_pixel_font = font_add("joystix monospace.otf", 22*4, false, false, 16, 128);
game_write_text("is tiring.", 10, 60, default_pixel_font, c_black, 0.05, 1);
game_wait(3);
default_pixel_font = font_add("joystix monospace.otf", 12*4, false, false, 16, 128);
game_write_text("Who wouldn’t want", 10,10, default_pixel_font, c_black, 0.05, 2);
game_wait(1);
game_write_text("to drown...", 10,30, default_pixel_font, c_black, 0.05, 2);
game_wait(2);
 default_pixel_font = font_add("joystix monospace.otf", 20*4, false, false, 16, 128);
game_write_text("In fantasy?", 10, 60, default_pixel_font, c_black, 0.2, 0);
game_wait(3);
game_create_instance_depth(0, 0, 0, beatmap_tutorial);
default_pixel_font = font_add("joystix monospace.otf", 10*4, false, false, 16, 128);
game_wait(2);
game_write_text("Can you hear the music?", 10, 90, default_pixel_font, c_black, 0.05, 2);
game_wait(3);
game_write_text("The music of your soul?", 10, 110, default_pixel_font, c_black, 0.05, 1);
game_wait(4);
game_write_text("Press Z to stomp along!", 10, 90, default_pixel_font, c_black, 0.05, 2);
game_wait(5);
game_write_text("Remember!", 10, 90, default_pixel_font, c_black, 0.05, 1);
game_wait(2);
default_pixel_font = font_add("joystix monospace.otf", 9*4, false, false, 16, 128);
game_write_text("Always listen to\n the tune of your heart!", 10, 110, default_pixel_font, c_black, 0.05, 1);
game_wait(4);
default_pixel_font = font_add("joystix monospace.otf", 10*4, false, false, 16, 128);
game_write_text("Press ← to clap along!", 10, 90, default_pixel_font, c_black, 0.05, 2);
game_wait(5);
game_write_text("Oh yeah!", 10, 90, default_pixel_font, c_black, 0.05, 2);
game_wait(4);
game_write_text("There it is!", 10, 110, default_pixel_font, c_black, 0.05, 2);
game_wait(5);
default_pixel_font = font_add("joystix monospace.otf", 7*4, false, false, 16, 128);
game_write_text("free yourself from the hangups!", 10, 90, default_pixel_font, c_black, 0.05, 2);
game_wait(4);
default_pixel_font = font_add("joystix monospace.otf", 10*4, false, false, 16, 128);
game_write_text("Lift yourself!", 10, 110, default_pixel_font, c_black, 0.05, 2);
game_wait(4);
default_pixel_font = font_add("joystix monospace.otf", 7*4, false, false, 16, 128);
game_write_text("And begin your life of fantasy...", 10, 90, default_pixel_font, c_black, 0.05, 2);








