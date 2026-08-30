enum UniformType {
	Float, FloatArr, Int, IntArr, Matrix, MatrixArr, DELIM
}

function PostProcessingShader(_shader_asset, _schema, _step, _draw) constructor {
	asset = _shader_asset;
	schema = _schema;
	schema_size = array_length(schema);
	step = _step;
	draw = _draw;
	composite = false;
	
	ures = {};
	for (var i = 0; i < schema_size; ++i) {
		var key = schema[i][1];
		var res = shader_get_uniform(asset, key);
		ures[$key] = res;
	}
	
	static step_eval = function(width, height) {
		var ret = step(width, height);
		for (var i = 0; i < schema_size; ++i) {
			var key = schema[i][1];
			var res = ures[$key];
			// See comment in `obj_vfx` Create.
			//obj_vfx.uniform_types[schema[i][0]](res, ret.uniform[$key]);
			switch (schema[i][0]) {
				case UniformType.Float: shader_set_uniform_f(res, ret.uniform[$key]); break;
				case UniformType.FloatArr: shader_set_uniform_f_array(res, ret.uniform[$key]); break;
				case UniformType.Int: shader_set_uniform_i(res, ret.uniform[$key]); break;
				case UniformType.IntArr: shader_set_uniform_i_array(res, ret.uniform[$key]); break;
				case UniformType.Matrix: shader_set_uniform_matrix(res); break;
				case UniformType.MatrixArr: shader_set_uniform_matrix_array(res, ret.uniform[$key]); break;
			}
		}
		return ret;
	};
	static draw_eval = function(step_ret, surface, pos) {
		return draw(step_ret, surface, pos);
	}
	
	static start = function() {
		application_surface_draw_enable(false);
		obj_vfx.active_shader = self;
	};
	static stop = function() {
		if (obj_vfx.active_shader == self) {
			application_surface_draw_enable(true);
			obj_vfx.active_shader = noone;
		}
	};
}

function CompositePostProcessingShader(_shaders) constructor {
	shaders = _shaders;
	count = array_length(shaders);
	composite = true;
	
	static start = function() {
		application_surface_draw_enable(false);
		obj_vfx.active_shader = self;
	};
	static stop = function() {
		if (obj_vfx.active_shader == self) {
			application_surface_draw_enable(true);
			obj_vfx.active_shader = noone;
		}
	};
}

function ObjectShader(_shader_asset, _schema, _step, _padding = 0) constructor {
	asset = _shader_asset;
	schema = _schema;
	schema_size = array_length(schema);
	step = _step;
	padding = _padding;
	composite = false;
	
	ures = {};
	for (var i = 0; i < schema_size; ++i) {
		var key = schema[i][1];
		var res = shader_get_uniform(asset, key);
		ures[$key] = res;
	}
	
	static step_eval = function(object) {
		var ret = step(object);
		for (var i = 0; i < schema_size; ++i) {
			var key = schema[i][1];
			var res = ures[$key];
			// See comment in `obj_vfx` Create.
			//obj_vfx.uniform_types[schema[i][0]](res, ret.uniform[$key]);
			switch (schema[i][0]) {
				case UniformType.Float: shader_set_uniform_f(res, ret.uniform[$key]); break;
				case UniformType.FloatArr: shader_set_uniform_f_array(res, ret.uniform[$key]); break;
				case UniformType.Int: shader_set_uniform_i(res, ret.uniform[$key]); break;
				case UniformType.IntArr: shader_set_uniform_i_array(res, ret.uniform[$key]); break;
				case UniformType.Matrix: shader_set_uniform_matrix(res); break;
				case UniformType.MatrixArr: shader_set_uniform_matrix_array(res, ret.uniform[$key]); break;
			}
		}
	};
	
	static start = function(object) {
		object.active_shader = self;
	};
	static stop = function(object) {
		object.active_shader = noone;
	};
}

function CompositeObjectShader(_shaders) constructor {
	shaders = _shaders;
	count = array_length(shaders);
	composite = true;
	
	padding = shaders[0].padding;
	for (var i = 1; i < count; ++i) {
		padding = max(padding, shaders[i].padding);
	}
	
	static start = function(object) {
		object.active_shader = self;
	};
	static stop = function(object) {
		object.active_shader = noone;
	};
}

function Effect(
	_effect_asset, _param_defaults, 
	_effect_layer_id="Effects", _effect_layer_depth=-600
) constructor {
	asset = _effect_asset;
	params = fx_get_parameters(asset);
	layer_id = _effect_layer_id;
	effect_depth = _effect_layer_depth;
	
	//show_debug_message(params);
	
	var param_names = variable_struct_get_names(_param_defaults);
	var param_count = variable_struct_names_count(_param_defaults);
	for (var i = 0; i < param_count; ++i) {
		var name = param_names[i];
		params[$name] = _param_defaults[$name];
	}
	
	static start = function() {
		fx_set_parameters(asset, params);
		if (!layer_exists(layer_id)) {
			layer_create(effect_depth, layer_id);
		}
		layer_set_fx(layer_id, asset);
	};
	static stop = function() {
		if (layer_exists(layer_id)) {
			layer_destroy(layer_id);
		}
	};
}

function EffectEphemeral(
	_effect_asset, _param_defaults, 
	_time_units, _duration, _on_finish, 
	_effect_layer_id="Effects", _effect_layer_depth=-600
) constructor {
	asset = _effect_asset;
	params = fx_get_parameters(asset);
	layer_id = _effect_layer_id;
	effect_depth = _effect_layer_depth;
	
	time_units = _time_units;
	duration = _duration;
	on_finish = _on_finish;
	
	var param_names = variable_struct_get_names(_param_defaults);
	var param_count = variable_struct_names_count(_param_defaults);
	for (var i = 0; i < param_count; ++i) {
		var name = param_names[i];
		params[$name] = _param_defaults[$name];
	}
	
	// Must be non-static.
	start = function() {
		fx_set_parameters(asset, params);
		if (!layer_exists(layer_id)) {
			layer_create(effect_depth, layer_id);
		}
		layer_set_fx(layer_id, asset);
		call_later(duration, time_units, function() {stop(layer_id, on_finish);});
	};
	static stop = function(layer_id, on_finish) {
		if (layer_exists(layer_id)) {
			layer_destroy(layer_id);
		}
		on_finish();
	};
}

function MultiEffect(
	_effect_asset_params_list, 
	_effect_layer_id="Effects", _effect_layer_depth=-600
) constructor {
	effects = {};
	size = array_length(_effect_asset_params_list);
	names = [];
	for (var i = 0; i < size; ++i) {
		var asset_params = _effect_asset_params_list[i];
		effects[$asset_params.name] = new obj_vfx.Effect(
			asset_params.asset, asset_params.defaults,
			_effect_layer_id + "_" + asset_params.name, 
			_effect_layer_depth
		);
		array_push(names, asset_params.name);
	}
	
	static start = function() {
		for (var i = 0; i < size; ++i) {
			effects[$names[i]].start();
		}
	};
	static stop = function() {
		for (var i = 0; i < size; ++i) {
			effects[$names[i]].stop();
		}
	};
}

function MultiEffectEphemeral(
	_effect_asset_params_list, _on_finish,
	_effect_layer_id="Effects", _effect_layer_depth=-600
) constructor {
	effects = {};
	size = array_length(_effect_asset_params_list);
	names = [];
	for (var i = 0; i < size; ++i) {
		var asset_params = _effect_asset_params_list[i];
		effects[$asset_params.name] = new obj_vfx.EffectEphemeral(
			asset_params.asset, asset_params.defaults,
			asset_params.time_units, asset_params.duration, function() {},
			_effect_layer_id + "_" + asset_params.name, 
			_effect_layer_depth
		);
		if (i > 0) {
			effects[$names[i - 1]].on_finish = effects[$asset_params.name].start;
		}
		array_push(names, asset_params.name);
	}
	effects[$names[size - 1]].on_finish = _on_finish;
	
	static start = function() {
		effects[$names[0]].start();
	};
	static stop = function() {
		for (var i = 0; i < size; ++i) {
			effects[$names[i]].stop();
		}
	};
}
