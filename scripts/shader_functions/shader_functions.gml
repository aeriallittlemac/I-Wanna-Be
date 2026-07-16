function shader_setup(draw_func) {
	self.active_shader = noone;
	self._shader_surface_a = noone;
	self._shader_surface_b = noone;
	self._shader_draw_func = draw_func;
	self._shader_time = 0;
}

function shader_apply(spr_idx=self.sprite_index, posx=self.x, posy=self.y) {
	var shader = self.active_shader;
	
	if (shader == noone) {
		return self._shader_draw_func(self.x, self.y);
	}

	if (shader.padding == 0 && !shader.composite) {
		// Single shader with no padding.
		
		shader_set(shader.asset);
		shader.step_eval(self);
		var ret = self._shader_draw_func(self.x, self.y);
		shader_reset();
		return ret;
	}
	
	var xoffset = sprite_get_xoffset(spr_idx);
	var yoffset = sprite_get_yoffset(spr_idx);
	
	if (!shader.composite) {
		// Single shader with padding.
		
		var surface = self._shader_surface_a;
		var padding = 2 * shader.padding;
		var _w = sprite_get_width(spr_idx) + padding;
		var _h = sprite_get_height(spr_idx) + padding;
		if (_surface_invalid(surface, _w, _h)) {
			surface_free(surface);
			surface = surface_create(_w, _h);
			self._shader_surface_a = surface;
		}
		
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
		var ret = self._shader_draw_func(shader.padding + xoffset, shader.padding + yoffset);
		surface_reset_target();
		
		shader_set(shader.asset);
		shader.step_eval(self);
		draw_surface(surface, posx - shader.padding - xoffset, posy - shader.padding - yoffset);
		shader_reset();
		
		return ret;
	}
	
	{
		// Composite shader. Can use padding anyways.
		var surface_a = self._shader_surface_a;
		var surface_b = self._shader_surface_b;
		var padding = 2 * shader.padding;
		var _w = sprite_get_width(spr_idx) + padding;
		var _h = sprite_get_height(spr_idx) + padding;
		if (_surface_invalid(surface_a, _w, _h)) {
			surface_free(surface_a);
			surface_a = surface_create(_w, _h);
			self._shader_surface_a = surface_a;
		}
		if (_surface_invalid(surface_b, _w, _h)) {
			surface_free(surface_b);
			surface_b = surface_create(_w, _h);
			self._shader_surface_b = surface_b;
		}
		
		var source = surface_b;
		var target = surface_a;
	
		// Start initial pass.
		
		surface_set_target(target);
		draw_clear_alpha(c_black, 0);
		
		var ret = self._shader_draw_func(shader.padding + xoffset, shader.padding + yoffset);
		
		surface_reset_target();
	
		// End initial pass.
	
		source = surface_a;
		target = surface_b;
	
		for (var i = 0; i < self.active_shader.count; ++i) {
			shader_layer = self.active_shader.shaders[i];
		
			surface_set_target(target);
			draw_clear_alpha(c_black, 0);
		
			shader_set(shader_layer.asset);
			shader_layer.step_eval(self);
			draw_surface(source, 0, 0);
			shader_reset();
		
			surface_reset_target();
		
			temp_surface = source;
			source = target;
			target = temp_surface;
		}
		draw_surface(source, posx - shader.padding - xoffset, posy - shader.padding - yoffset);
		
		return ret;
	}
}

function shader_cleanup() {
	if (surface_exists(self._shader_surface_a)) {
		surface_free(self._shader_surface_a);
	}
	if (surface_exists(self._shader_surface_b)) {
		surface_free(self._shader_surface_b);
	}
}

function _surface_invalid(surface, width, height) {
	return !surface_exists(surface) || surface_get_width(surface) != width || surface_get_height(surface) != height;
}
