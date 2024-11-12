room_goto(target_rm);
obj_player.x = target_x;
obj_player.y = target_y;
obj_player.sprite_index = obj_player.sprite[facing];
obj_player.face = DOWN;
image_speed = -1;