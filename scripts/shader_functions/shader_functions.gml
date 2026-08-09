#macro SURFACE_SCALING 4
#macro SURFACE_SCALING_INV (1 / SURFACE_SCALING)

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
		return self._shader_draw_func(self.x, self.y, 1);
	}

	if (shader.padding == 0 && !shader.composite) {
		// Single shader with no padding.
		
		shader_set(shader.asset);
		shader.step_eval(self);
		var ret = self._shader_draw_func(self.x, self.y, 1);
		shader_reset();
		return ret;
	}
	
	var xoffset = sprite_get_xoffset(spr_idx);
	var yoffset = sprite_get_yoffset(spr_idx);
	
	if (!shader.composite) {
		// Single shader with padding.
		
		var surface = self._shader_surface_a;
		var padding = 2 * shader.padding;
		var _w = (sprite_get_width(spr_idx) + padding) * SURFACE_SCALING;
		var _h = (sprite_get_height(spr_idx) + padding) * SURFACE_SCALING;
		if (_surface_invalid(surface, _w, _h)) {
			surface_free(surface);
			surface = surface_create(_w, _h);
			self._shader_surface_a = surface;
			
			show_debug_message("Created surface for shader. If this message prints a lot, it may indicate a performance penalty.");
		}
		
		surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
		var ret = self._shader_draw_func(shader.padding + xoffset, shader.padding + yoffset, SURFACE_SCALING);
		surface_reset_target();
		
		shader_set(shader.asset);
		shader.step_eval(self);
		draw_surface_ext(surface, posx - shader.padding - xoffset, posy - shader.padding - yoffset, SURFACE_SCALING_INV, SURFACE_SCALING_INV, 0, c_white, 1);
		shader_reset();
		
		return ret;
	}
	
	{
		// Composite shader. Can use padding anyways.
		var surface_a = self._shader_surface_a;
		var surface_b = self._shader_surface_b;
		var padding = 2 * shader.padding;
		var _w = (sprite_get_width(spr_idx) + padding) * SURFACE_SCALING;
		var _h = (sprite_get_height(spr_idx) + padding) * SURFACE_SCALING;
		if (_surface_invalid(surface_a, _w, _h)) {
			surface_free(surface_a);
			surface_a = surface_create(_w, _h);
			self._shader_surface_a = surface_a;
			
			show_debug_message("Created surface for shaders. If this message prints a lot, it may indicate a performance penalty.");
		}
		if (_surface_invalid(surface_b, _w, _h)) {
			surface_free(surface_b);
			surface_b = surface_create(_w, _h);
			self._shader_surface_b = surface_b;
			
			show_debug_message("Created surface for shaders. If this message prints a lot, it may indicate a performance penalty.");
		}
		
		var source = surface_b;
		var target = surface_a;
	
		// Start initial pass.
		
		surface_set_target(target);
		draw_clear_alpha(c_black, 0);
		
		var ret = self._shader_draw_func(shader.padding + xoffset, shader.padding + yoffset, SURFACE_SCALING);
		
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
		draw_surface_ext(source, posx - shader.padding - xoffset, posy - shader.padding - yoffset, SURFACE_SCALING_INV, SURFACE_SCALING_INV, 0, c_white, 1);
		
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
