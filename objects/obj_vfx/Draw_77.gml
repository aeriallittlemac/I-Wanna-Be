var _pos = application_get_position();

shader_set(sh_kaleidoscope);
var _res = shader_get_uniform(sh_kaleidoscope, "u_resolution");
var _segs = shader_get_uniform(sh_kaleidoscope, "u_segements");
var _angle = shader_get_uniform(sh_kaleidoscope, "u_time");
shader_set_uniform_f(_res, surface_get_width(application_surface), surface_get_height(application_surface));
shader_set_uniform_f(_segs, 2.0);
shader_set_uniform_f(_angle, current_time * 0.005);
draw_surface_stretched(application_surface, _pos[0], _pos[1], _pos[2] - _pos[0], _pos[3] - _pos[1]);
shader_reset();
