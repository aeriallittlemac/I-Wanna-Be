x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
	
if array_length(slides)>=1{
	minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);
	if slide_num >= sprite_get_number(slides[0]){
		array_delete(slides, 0, 1);
		slide_num = 0;
	}
	else{
	global.in_slideshow = true;
	draw_sprite_ext(slides[0], slide_num, 0, 0, minimap_scale * 270 / sprite_get_width(slides[0]), minimap_scale * 152 / sprite_get_height(slides[0]) , 0, c_white, 1 );
	//draw_sprite_stretched(slides[0], slide_num, x, y, 270 / sprite_get_width(slides[0]), 152 / sprite_get_height(slides[0]));
	}
	if !global.in_dialogue &&  keyboard_check_pressed(ord("Z") && previously_on){
		slide_num++;
	}
	previously_on = true
}
else{
	global.in_slideshow = false;
	previously_on = false
}
