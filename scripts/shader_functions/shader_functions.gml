function shader_apply(object, shader) {
	if (shader == noone) {
		exit;
	}

	shader_set(shader.asset);
	var step_ret = shader.step_eval(object);
	return shader.draw_eval(step_ret, object);
}

function shader_cleanup() {
	shader_reset();
}
