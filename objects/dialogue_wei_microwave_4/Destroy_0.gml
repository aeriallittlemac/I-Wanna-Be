//wei pulls out boombox
instance_create_depth(0,0,0, obj_rhythm_game);
var ins = instance_create_depth(396,25,TEXTBOX_DEPTH, obj_sign);
global.destroy_soon = ins;
with ins{
font_size = 8;
font_color = c_white;
default_pixel_font = font_add("joystix monospace.otf", font_size, false, false, 32, 128);
font_add_enable_aa(false);
}
