cover_anchor+=cover_slide_speed;
if cover_anchor>= cover_slide_target{
	book_sliding = false;
	bookmark_select = false;
	cover_anchor = cover_anchor_set;
}
else{
book_sliding = true;
alarm[0] = 1;
box_select_i = 0;
box_select_j = 0;
pamphletPage = 0;
}