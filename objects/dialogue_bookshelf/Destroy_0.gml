if global.day == 3 && global.game_time = "12:00 am"{
	obj_bookshelf.sprite_index = spr_bookshelf_open;
	instance_activate_object(BOBBY_ROOM_VENT);
	obj_bookshelf.entityActivateArg = -1;
}