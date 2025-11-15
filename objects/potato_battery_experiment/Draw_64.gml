draw_sprite_ext(spr_experiment_potato, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1 );
if coin_placed{
	draw_sprite_ext(spr_experiment_copper_coin, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1 );
}
if zinc_placed{
	draw_sprite_ext(spr_experiment_zinc_chip, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1 );
}
if LED_placed{
	draw_sprite_ext(spr_experiment_led_light, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1 );
}
draw_set_font(default_pixel_font);
for (var i=0; i<3; i++){
	var font_color = c_white;
	if item_selected{
		font_color = c_gray;
		draw_text_transformed_color(116*minimap_scale, 68*minimap_scale,"+", 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
		draw_text_transformed_color(137*minimap_scale, 58*minimap_scale,"+", 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
		draw_text_transformed_color(126*minimap_scale, 35*minimap_scale,"+", 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
	}
	if option == i{
		draw_text_transformed_color(item_text_x, item_text_y +i*item_margins, "> "+experiment_items[i], 0.5, 0.5, 0, font_color, font_color, font_color, font_color,1);
	}
	else{
		draw_text_transformed_color(item_text_x, item_text_y +i*item_margins, experiment_items[i], 0.5, 0.5, 0, font_color, font_color, font_color, font_color,1);
	}
	
}