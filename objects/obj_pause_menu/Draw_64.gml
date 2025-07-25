if global.pause_menu
{
	DrawMenu();
	draw_sprite_ext(player_sprite, 0, (player_x - camera_get_view_x(view_camera[0]) )*minimap_scale, player_y*minimap_scale, player_scale_x*minimap_scale, player_scale_y*minimap_scale, 0, c_black, 1);
}







