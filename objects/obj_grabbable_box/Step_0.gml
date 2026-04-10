choice_x += drag_speed_x*delta_time/1000000;
choice_y += drag_speed_y*delta_time/1000000;
if instance_exists(obj_throwable){
	if choice_x-box_width/(minimap_scale*2) <= obj_throwable.choice_x+obj_throwable.box_width/(minimap_scale*2)&&
	choice_y-box_height/(minimap_scale*2) <= obj_throwable.choice_y+obj_throwable.box_height/(minimap_scale*2)&&
	choice_y+box_height/(minimap_scale*2) >= obj_throwable.choice_y-obj_throwable.box_height/(minimap_scale*2){
		instance_destroy(obj_throwable);
		instance_destroy(self);
		
	}
}
if choice_x < -50|| choice_x > 320{
	instance_destroy(self);
	
}
if !obj_brooklyn_QTE.grabbing{
	if abs(drag_speed_x) < 30 || abs(drag_speed_y) < 20{
		instance_destroy(self);
		}
}