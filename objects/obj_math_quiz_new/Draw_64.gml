draw_set_font(default_pixel_font);
if results{
	if question_list[questions_displayed[selection]].question_answer{
		draw_text_transformed_colour(85, 50, "Correct", 0.5, 0.5, 0, c_green, c_green, c_lime, c_lime,1);
	}
	else{
		draw_text_transformed_colour(85, 50, "WRONG", 0.5, 0.5, 0, c_red, c_red, c_maroon, c_maroon,1);
	}
	draw_rectangle_colour(rect_one_x, rect_one_y, rect_one_x+rect_width, rect_one_y-rect_height_unit*red, #E51537, #E51537, #E51537, #E51537, false);
	draw_rectangle_colour(rect_one_x+rect_width+rect_margins, rect_one_y,rect_one_x+rect_width+rect_margins+rect_width, rect_one_y-rect_height_unit*blue, #0565D1, #0565D1, #0565D1, #0565D1, false);
	draw_rectangle_colour(rect_one_x+rect_width*2+rect_margins*2, rect_one_y, rect_one_x+rect_width*2+rect_margins*2+rect_width, rect_one_y-rect_height_unit*yellow, #D99F00, #D99F00, #D99F00, #D99F00, false);
	draw_rectangle_colour(rect_one_x+rect_width*3+rect_margins*3, rect_one_y, rect_one_x+rect_width*3+rect_margins*3+rect_width, rect_one_y-rect_height_unit*green, #229000, #229000, #229000, #229000, false);

	draw_text_transformed_color(rect_one_x + 20,rect_one_y-rect_height_unit*red - 30,string(red), 0.5, 0.5, 0, c_black, c_black, c_black, c_black,1);
	draw_text_transformed_color(rect_one_x+rect_width+rect_margins + 20,rect_one_y-rect_height_unit*blue - 30,string(blue), 0.5, 0.5, 0, c_black, c_black, c_black, c_black,1);
	draw_text_transformed_color(rect_one_x+rect_width*2+rect_margins*2 + 20,rect_one_y-rect_height_unit*yellow - 30,string(yellow), 0.5, 0.5, 0, c_black, c_black, c_black, c_black,1);
	draw_text_transformed_color(rect_one_x+rect_width*3+rect_margins*3 + 20,rect_one_y-rect_height_unit*green - 30,string(green), 0.5, 0.5, 0, c_black, c_black, c_black, c_black,1);
	
}
else{
	var countdown_text = string(countdown);
	if countdown<10{
		countdown_text = "0" + countdown_text;
	}
	draw_text_transformed_color(62, 140, countdown_text, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
	draw_text_transformed_colour(85, 50, "Which of the following is true?", 0.5, 0.5, 0, c_black, c_black, c_black, c_black,1);
	draw_set_font(question_pixel_font);
	draw_text_ext_transformed_colour(question_zero_x, question_zero_y, question_list[questions_displayed[0]].question_text, question_line_sep, question_width, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
	draw_text_ext_transformed_colour(question_zero_x + question_x_margin, question_zero_y, question_list[questions_displayed[1]].question_text, question_line_sep, question_width, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
	draw_text_ext_transformed_colour(question_zero_x, question_zero_y - question_y_margin, question_list[questions_displayed[2]].question_text, question_line_sep, question_width, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
	draw_text_ext_transformed_colour(question_zero_x + question_x_margin, question_zero_y - question_y_margin, question_list[questions_displayed[3]].question_text, question_line_sep, question_width, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
	draw_sprite_ext(spr_selection, selection, 0, 0, minimap_scale, minimap_scale,0,c_white,1);
}
//draw_text_transformed_color(60,190,string(countdown), 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);