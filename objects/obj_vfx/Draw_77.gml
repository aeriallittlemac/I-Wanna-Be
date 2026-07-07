if (active_shader == noone) {
	exit;
}

var _width = surface_get_width(application_surface);
var _height = surface_get_height(application_surface);
var _pos = application_get_position();

if (composite) {
	if (!surface_exists(surface_a)) {
		surface_a = surface_create(_width, _height);
	}
	if (!surface_exists(surface_b)) {
		surface_b = surface_create(_width, _height);
	}
	var source = application_surface;
	var target = surface_a;
	var m = true;
	
	for (var i = 0; i < active_shader.count; ++i) {
		var shader_layer = active_shader.shaders[i];
		surface_set_target(target);
		draw_clear_alpha(c_black, 0);
		
		shader_set(shader_layer.asset);
		var step_ret = shader_layer.step_eval(_width, _height);
		shader_layer.draw_eval(step_ret, surface, _pos);
		shader_reset();
		surface_reset_target();
		
		if (m) {
			source = surface_a;
			target = surface_b;
			m = false;
		} else {
			source = surface_b;
			target = surface_a;
			m = true;
		}
	}
	draw_surface_stretched(target, _pos[0], _pos[1], _pos[2] - _pos[0], _pos[3] - _pos[1]);
} else {
	shader_set(active_shader.asset);

	var step_ret = active_shader.step_eval(_width, _height);
	active_shader.draw_eval(step_ret, application_surface, _pos);

	shader_reset();
}
