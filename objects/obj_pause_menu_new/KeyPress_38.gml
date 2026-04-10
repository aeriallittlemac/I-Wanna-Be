if global.pause_menu{
if bookmark_select && !book_sliding{
if selected_bookmark > 0{
	selected_bookmark --;
}
}else{
	if page == 0{
		if box_select_j >0{
			box_select_j--;
			audio_play_sound(sfx_move_select, 1, false);
		}
	}
	
}
}