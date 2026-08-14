if global.day > 2{
	INST_BOBBYS_TABLE.x = 70;
	INST_BOBBYS_TABLE.y = 86;
	INST_BOBBYS_TABLE.depth = -INST_BOBBYS_TABLE.bbox_bottom
	instance_destroy(self);
}
