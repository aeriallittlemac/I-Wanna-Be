var inst = instance_create_depth(0,0,FILTER_DEPTH,obj_black_filter_spotlight)
inst.spotlight_target = obj_brooklyn;
instance_destroy(self);