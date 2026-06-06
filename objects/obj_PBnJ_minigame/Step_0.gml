if !toast_one_snapped{
snap_to_toast_one = ((toast_one_x-hand_x)*(toast_one_x-hand_x)
+(toast_one_y-hand_y)*(toast_one_y-hand_y) <= snap_to_toast_range*snap_to_toast_range) && hand_index == 0;
}
if !toast_two_snapped{
snap_to_toast_two = ((toast_two_x-hand_x)*(toast_two_x-hand_x)
+(toast_two_y-hand_y)*(toast_two_y-hand_y) <= snap_to_toast_range*snap_to_toast_range) && hand_index == 0 &&!snap_to_toast_one;
}
snap_to_knife = ((knife_x-hand_x)*(knife_x-hand_x)
+(knife_y-hand_y)*(knife_y-hand_y) <= snap_to_knife_range*snap_to_knife_range) && hand_index == 0 &&!snap_to_toast_one &&!snap_to_toast_two;

toast_one_snap_to_plate =  grabbing == "toast_one" && ((toast_one_x-plate_x)*(toast_one_x-plate_x)
+(toast_one_y-plate_y)*(toast_one_y-plate_y) <= toast_one_snap_to_plate_range*toast_one_snap_to_plate_range);

toast_two_snap_to_plate =  toast_one_snapped && grabbing == "toast_two" && ((toast_two_x-plate_x)*(toast_two_x-plate_x)
+(toast_two_y-plate_y)*(toast_two_y-plate_y) <= toast_two_snap_to_plate_range*toast_two_snap_to_plate_range);

smearing = ((smear_x-knife_x)*(smear_x-knife_x) + (plate_y-knife_y)*(plate_y-knife_y) <= smear_range*smear_range) && toast_one_snapped && knife_index != 0;
if smearing && smear > max_smear{
	if knife_index == 1{
		array_push(smear_stack, "pb");
	}
	else if knife_index == 2{
		array_push(smear_stack, "jam");
	}
	smear = 0;
	knife_index = 0;
}

if grabbing == "toast_one"{
	toast_one_x = hand_x;
	toast_one_y = hand_y;
}
else if grabbing == "toast_two"{
	toast_two_x = hand_x;
	toast_two_y = hand_y;
}
else if grabbing == "knife"{
	knife_x = hand_x;
	knife_y = hand_y;
}
//peanut_butter_zone = 

