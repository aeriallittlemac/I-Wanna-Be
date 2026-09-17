function global_hue(_hex){

   var _r = (_hex >> 16) & 0xFF;
    var _g = (_hex >> 8) & 0xFF;
    var _b = _hex & 0xFF;
    
   global.sh_ambience = [_b/255, _g/255, _r/255];

}

function default_lighting(){
	global_hue(#ffffff);
	global.sh_bloom_bleed = [0.125, 0.125, 0.125];
	global.shadow_blur_radius = 20;
	global.shadow_bleed = 0.125;
	global.shadow_weight = 0.0;
	global.time_based_lighting = true;
}



function gambinos_lighting(){
	
		var spotlight_y_offset = -20;
	var radius = 50.0;
	var	illumination = 10000.0;
	var	bloom = 0.5;
	var	mbright = 1.0;
	var	angle_lower = -110.0;
	var	angle_upper = -70.0;
	var	dynamic = false;
	
	
	if room == school_main_classroom{
		spotlight_y_offset = -100;
		inst_classroom_light_1.image_blend = c_purple;
		inst_classroom_light_2.image_blend = c_purple;
		angle_lower = -100.0;
		angle_upper = -80.0;
	}
	var spotlight = instance_create_depth(obj_gambino.x, spotlight_y_offset, 0, obj_sh_light);
	with spotlight{
		image_blend = c_blue;
		_radius = radius;
		_illumination = illumination;
		_bloom = bloom;
		_mbright = mbright;
		_angle_lower = angle_lower;
		_angle_upper = angle_upper;
		_dynamic = dynamic;
		light_name = "Gambino spotlight";
	}
	global_hue(#ff4747);
	global.sh_bloom_bleed = [0.125, 0.125, 0.125];
	global.shadow_blur_radius = 20;
	global.shadow_bleed = 0.125;
	global.shadow_weight = 0.0;
	global.time_based_lighting = true;
	
}

function reverse_gambinos_lighting(){
	if room == school_main_classroom{
		inst_classroom_light_1.image_blend = c_white;
		inst_classroom_light_2.image_blend = c_white;
	}
	with (obj_sh_light) {
    if (light_name == "Gambino spotlight") {
        instance_destroy(self);
    }
	}
	default_lighting()
	
	
}

function mcronalds_lighting(){
	obj_vfx.effects.posterize.start();
	
	var spotlight_y_offset = -20;
	var radius = 50.0;
	var	illumination = 10000.0;
	var	bloom = 0.2;
	var	mbright = 1.0;
	var	angle_lower = -110.0;
	var	angle_upper = -70.0;
	var	dynamic = false;
	
	if room == school_main_classroom{
		inst_classroom_light_1.image_blend = c_blue;
		inst_classroom_light_2.image_blend = c_blue;
		angle_lower = -100.0;
		angle_upper = -80.0;
	}
	var spotlight = instance_create_depth(obj_mcronald.x, spotlight_y_offset, 0, obj_sh_light);
	with spotlight{
		image_blend = c_white;
		_radius = radius;
		_illumination = illumination;
		_bloom = bloom;
		_mbright = mbright;
		_angle_lower = angle_lower;
		_angle_upper = angle_upper;
		_dynamic = dynamic;
		light_name = "McRonald spotlight";
	}
	global_hue(#8fffa8);
	global.sh_bloom_bleed = [0.125, 0.125, 0.125];
	global.shadow_blur_radius = 20;
	global.shadow_bleed = 0.125;
	global.shadow_weight = 0.0;
	global.time_based_lighting = true;
	
}

function reverse_mcronalds_lighting(){
	obj_vfx.effects.posterize.stop();
	if room == school_main_classroom{
		inst_classroom_light_1.image_blend = c_white;
		inst_classroom_light_2.image_blend = c_white;
	}
	with (obj_sh_light) {
    if (light_name == "McRonald spotlight") {
        instance_destroy(self);
    }
	}
	default_lighting()
	
	
}