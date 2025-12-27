if player_score > 999{
	display_player_score_string = string(player_score);
}
else{
	if player_score > 99{
		display_player_score_string = "0" + string(player_score);
	}
	else{
		if player_score > 9{
			display_player_score_string = "00" + string(player_score);
		}
		else{
			display_player_score_string = "000" + string(player_score);
		}
	}
}

draw_sprite_ext(spr_rhythm_game_arrows, -1, 0, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );
if !QTE{
	draw_sprite_ext(spr_player_down, 0, (obj_player.x - camera_get_view_x(view_camera[0])) * minimap_scale, obj_drum_kit.y * minimap_scale, minimap_scale*obj_player.image_xscale, minimap_scale*obj_player.image_yscale, 0, c_white, 1);
	draw_sprite_ext(spr_drum_kit, obj_drum_kit.image_index, (obj_drum_kit.x - camera_get_view_x(view_camera[0])) * minimap_scale, obj_drum_kit.y * minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1);
}
draw_sprite_ext(spr_rhythm_line_arrows, -1, rhythm_line_x*minimap_scale, 0, minimap_scale, minimap_scale, 0, c_white, 1 );

if QTE{
	draw_sprite_ext(left_character_silhouette, character_anim_frame, left_character_x*minimap_scale, character_y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );
	draw_sprite_ext(right_character_silhouette, -1, right_character_x*minimap_scale, character_y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );
}
draw_set_font(default_pixel_font);
draw_text_transformed_color(245 * minimap_scale,0,display_player_score_string, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);