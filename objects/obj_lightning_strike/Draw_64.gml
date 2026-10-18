draw_sprite_ext(sprite_index, lightning_index, x*minimap_scale, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1);
if lightning_index > image_number{

instance_destroy(self)
}
else{
	if instance_exists(obj_lightning_player){
		if (obj_lightning_player.x >= x-x_col_box/2
		&& obj_lightning_player.x <= x+x_col_box/2
		&& obj_lightning_player.y >= y-y_col_box/2
		&& obj_lightning_player.y <= y+y_col_box/2)
		 && !player_struck{
			player_struck = true;
			instance_destroy(obj_lightning_player);
		}
	}
}
