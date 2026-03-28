draw_set_font(default_pixel_font);
if text_option == 0{
	draw_text_ext_transformed_colour(irandom_range(-text_margin_of_error,text_margin_of_error)+question_zero_x, irandom_range(-text_margin_of_error,0)+question_zero_y, "Stop running, I don't like to chase.", question_line_sep, question_width, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
}
else if text_option == 1{
	draw_text_ext_transformed_colour(irandom_range(-text_margin_of_error,text_margin_of_error)+question_zero_x + question_x_margin, irandom_range(-text_margin_of_error,0)+question_zero_y, "Why are you making this so difficult?", question_line_sep, question_width, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
}
else if text_option == 2{
	draw_text_ext_transformed_colour(irandom_range(-text_margin_of_error,text_margin_of_error)+question_zero_x, irandom_range(-text_margin_of_error,0)+question_zero_y - question_y_margin, "This won't hurt as much as you think.", question_line_sep, question_width, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
}
else if text_option == 3{
	draw_text_ext_transformed_colour(irandom_range(-text_margin_of_error,text_margin_of_error)+question_zero_x + irandom_range(-text_margin_of_error,0)+question_x_margin, question_zero_y - question_y_margin, "Grace will be mine, and mine alone...", question_line_sep, question_width, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
}
