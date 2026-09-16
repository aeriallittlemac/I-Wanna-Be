function global_hue(_hex){

   var _r = (_hex >> 16) & 0xFF;
    var _g = (_hex >> 8) & 0xFF;
    var _b = _hex & 0xFF;
    
   global.sh_ambience = [_r/255, _g/255, _b/255];

}


function mcronalds_lighting(){
	var spotlight = instance_create_depth(obj_mcronald.x, obj_mcronald.y - 21, 0, obj_sh_light);
	with spotlight{
		image_blend = c_blue;
		_radius = 50.0;
		_illumination = 1000.0;
		_bloom = 0.0;
		_mbright = 1.0;
		_angle_lower = -110.0;
		_angle_upper = -70.0;
		_dynamic = false;
	}
	global_hue(#fc8bfb);
	global.sh_bloom_bleed = [0.125, 0.125, 0.125];
	global.shadow_blur_radius = 20;
	global.shadow_bleed = 0.125;
	global.shadow_weight = 0.0;
	global.time_based_lighting = true;
	
}