if x > left_lane+1 && x < right_lane{
	x = right_lane;
}

if x < left_lane+1{
	x = mid_lane
}