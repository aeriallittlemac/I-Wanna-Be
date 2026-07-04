if (active_shader == noone) {
	exit;
}

shader_set(active_shader.asset);

var step_ret = active_shader.step_eval();
active_shader.draw_eval(step_ret);

shader_reset();
