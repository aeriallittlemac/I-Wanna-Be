//
// Simple passthrough fragment shader
////
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//void main()
//{
//    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
//	gl_FragColor.r = 1.0;
//}

precision mediump float;

uniform vec2 u_resolution;
uniform float u_time;

void main() {
	vec2 st = (gl_FragCoord.xy * 2.0 - u_resolution.xy) / u_resolution.y;
	
	float segements = 6.0;
	//float angle = atan(st.y, st.x);
	
	//float radius = length(st);
	//float seg_size = 3.14159 * 2.0 / segements;
	
	//angle = mod(angle, seg_size);
	//angle = abs(angle - seg_size * 0.5);
	
	//vec2 uv = radius * vec2(cos(angle), sin(angle));
	
	//uv.x += u_time * 0.1;
	//uv.y += u_time * 0.1;
	
	//vec3 color = vec3(uv.x, uv.y, 0.5 + 0.5 * sin(u_time));
	
		vec2 p = v_vTexcoord - 0.5;
	p.x *= u_resolution.x / u_resolution.y;
	float r = length(p);
	float a = atan(p.y, p.x);
	float tau = 3.1415926536 * 2.0;
	a = mod(a + u_time, tau / segements);
	abs(a - tau / (segements * 2.0));
	vec2 p2 = r * vec2(cos(a), sin(a));
	p2.x /= u_resolution.x / u_resolution.y;
	vec2 uv = p2 + 0.5;

	
	vec4 baseColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	vec3 finalRGB = mix(baseColor.rgb, vec3(uv.x, uv.y, 0.5 + 0.5 * sin(u_time)), 0.5);
	gl_FragColor = vec4(finalRGB, baseColor.a);
}

//varying vec2 v_texcoord;
//uniform vec2 u_resolution;
//uniform float u_segements;
//uniform float u_angle;

//void main() {
//	vec2 p = v_texcoord - 0.5;
//	p.x *= u_resolution.x / u_resolution.y;
//	float r = length(p);
//	float a = atan(p.y, p.x);
//	float tau = 3.1415926536 * 2.0;
//	a = mod(a + u_angle, tau / u_segements);
//	abs(a - tau / (u_segements * 2.0));
//	vec2 p2 = r * vec2(cos(a), sin(a));
//	p2.x /= u_resolution.x / u_resolution.y;
//	vec2 uv = p2 + 0.5;
//	gl_FragColor = texture2D(gm_BaseTexture, uv);
//}
