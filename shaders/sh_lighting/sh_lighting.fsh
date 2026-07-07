//
// Faux lighting shader.
// The bloom is not an actual bloom.
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_xArr[16];
uniform float u_yArr[16];
uniform float u_rChannel[16];
uniform float u_gChannel[16];
uniform float u_bChannel[16];
uniform float u_aChannel[16];
uniform float u_brightness[16];
uniform float u_bloomArr[16];
uniform float u_softening[16];
uniform int u_count;
uniform vec3 u_ambience;

uniform vec2 u_camPos;
uniform vec2 u_resolution;

void main()
{
	vec2 worldPos = v_vTexcoord * u_resolution + u_camPos;
	vec4 lightMap = vec4(u_ambience, 1.0);
	for (int i = 0; i < u_count; ++i)
	{
		vec2 pos = vec2(u_xArr[i], u_yArr[i]);
		vec4 color = vec4(u_rChannel[i], u_gChannel[i], u_bChannel[i], u_aChannel[i]);
		float brightness = u_brightness[i];
		float bloom = u_bloomArr[i];
		float softening = u_softening[i];
		
		vec2 dist = worldPos - pos;
		float distSq = dot(dist, dist);
		float invSq = inversesqrt(distSq + softening);
		invSq = invSq * invSq;
		float attenuation = clamp(brightness * invSq, 0.0, 1.0);
		
		lightMap += color * attenuation + bloom / color;
		
		//gl_FragColor = vec4(dist, 0.0, 0.0, 1.0);
	}

	vec4 baseCol = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor = v_vColour * baseCol * lightMap;
}
