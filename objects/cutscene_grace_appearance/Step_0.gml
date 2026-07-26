if !instance_exists(obj_grace){
	instance_destroy(self);
}

else if (obj_grace.sprite_index == spr_grace_chew_silhouette
&&obj_grace.image_index >= obj_grace.image_number-1){
	show_debug_message("chewing! loop!");
	
	if create_crumbs{
	npc_animate(obj_grace, spr_grace_chew_silhouette_loop);
	instance_create_depth(obj_grace.x - 5, obj_grace.y - 15, OBJ_MAX_DEPTH, PBnJ_crumbs);
	create_crumbs = false;
	}
	instance_destroy(self);
}






