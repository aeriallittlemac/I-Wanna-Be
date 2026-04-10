if start{
	timer -= delta_time/1000000;
	if timer <=0 && alarm[2]<-0.1{
		instance_destroy(obj_maze_wall);
		instance_destroy(obj_maze_player);
		alarm[2]=1;
	}
}