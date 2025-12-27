minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;

default_pixel_font = font_add("joystix monospace.otf", 32, false, false, 32, 128);
font_add_enable_aa(false);
x_border = 400;
portrait_x_border = 8;
y_border = 130;
display_text = "";
//text = ["I walk this empty street, on the boulevard of broken dreams. Where the city sleeps, and I'm the only one and I walk alone.", "My shadow's only thing that walks besides me."]


setup = false;

item_pos = 0;
text_width_limit = 0;
