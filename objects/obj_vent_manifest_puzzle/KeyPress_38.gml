if selected_index > 2{
	selected_index -= 3;
}
if squares[selected_index] == 0{
	if selected_index > 2{
		selected_index -= 3;
	}
	else{
		selected_index += 3;
	}
}