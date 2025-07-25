draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, intro_alpha);
draw_sprite_ext(spr_character_pamphlet, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
character = obj_npc_manager.npcs[page];
var female = character.object == obj_mei || character.object == obj_grace || character.object == obj_ashley || character.object ==  obj_brooklyn;

if character.introduced{
	draw_sprite_ext(character.intro_sprite, 0, character_x, character_y + female_y_offset*female, character_scale*minimap_scale, character_scale*minimap_scale, 0, c_white, 1);
	draw_set_color(c_white);
	draw_set_font(default_pixel_font);
	draw_text_transformed(sprite_get_width(character.intro_sprite)*character_scale*minimap_scale + text_x_offset, text_y, character.first_name, 1, 1, 0);

	draw_set_font(title_pixel_font);
	draw_text_transformed(sprite_get_width(character.intro_sprite)*character_scale*minimap_scale + text_x_offset, title_y, character.title, 1, 1, 0);

	draw_set_font(relationship_pixel_font);
	draw_text_transformed_colour(sprite_get_width(character.intro_sprite)*character_scale*minimap_scale + text_x_offset, relationship_y, character.relationship+" points: " +  string(character.relationshipPoints), 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

	draw_set_font(description_pixel_font);
	draw_text_ext_transformed_colour(sprite_get_width(character.intro_sprite)*character_scale*minimap_scale + text_x_offset, current_obersavation_y, character.current_obersavation, 16, 300, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

}
else{
	draw_sprite_ext(character.intro_sprite, 0, character_x, character_y + female_y_offset*female, character_scale*minimap_scale, character_scale*minimap_scale, 0, c_black, 1);
	draw_set_color(c_white);
	draw_set_font(default_pixel_font);
	draw_text_transformed(sprite_get_width(character.intro_sprite)*character_scale*minimap_scale + text_x_offset, text_y, "???", 1, 1, 0);

}

draw_set_font(arrow_pixel_font);
if page == 0{
	draw_text_transformed_colour(right_arrow_x, arrow_y, "next\npage", 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);
}
else if page == array_length(obj_npc_manager.npcs)-1{
	draw_text_transformed_colour(left_arrow_x, arrow_y, "last\npage", 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);
}
else{
	if cursor == RIGHT{
		right_arrow_selected();
	}
	else{
		left_arrow_selected();
	}
}
