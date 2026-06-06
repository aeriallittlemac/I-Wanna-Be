if hand_index == 1{
	if toast_one_snap_to_plate{
		toast_one_x = plate_x;
		toast_one_y = plate_y;
		toast_one_snap_to_plate = false;
		toast_one_snapped = true;
	}
	else if toast_two_snap_to_plate{
		toast_two_x = plate_x;
		toast_two_y = plate_y;
		if array_length(smear_stack) >=2{
			toast_two_snap_to_plate = false;
			toast_two_snapped = true;
			alarm[0] = 100;
			audio_play_sound(sfx_kids_cheer, 1, false);
		}
	}
	grabbing = "none";
	hand_index = 0;
}
else{
	if snap_to_toast_one{
		grabbing = "toast_one";
	}
	else if snap_to_toast_two{
		grabbing = "toast_two";
	}
	else if snap_to_knife{
		grabbing = "knife";
	}
	hand_index = 1;
}