if selected_index%3 < 2{
	selected_index ++;
}
if squares[selected_index] == 0{
	if selected_index%3 < 2{
		selected_index ++;
	}
	else{
		selected_index --;
	}
}