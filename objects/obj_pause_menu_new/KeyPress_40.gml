if bookmark_select && !book_sliding{
if selected_bookmark < 2{
	selected_bookmark ++;
}
}
else{
	if page == 0{
		if box_select_j <page_max_rows-1{
			box_select_j++;
			audio_play_sound(sfx_move_select, 1, false);
		}
	}
	
}