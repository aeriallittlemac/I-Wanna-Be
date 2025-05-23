character_x -= sliding_speed*(card_over==false)*(card_intro==false) + slide_away_speed*(card_over == true || card_intro == true);
if character_x <= 190{
	card_intro = false;
}
if !card_over && !card_intro && string_length(displayed_text) < string_length(text){
	i++;
	displayed_text += string_char_at(text, i);
}
if character_x <= 130{
	card_over = true;
}