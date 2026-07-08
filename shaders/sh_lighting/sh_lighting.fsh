varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_pos[16];
// xy = position
// z  = radius
// w  = illumination

uniform vec4 u_color[16];
// rgb = color
// a   = intensity

uniform vec2 u_bloom[16];
// x = bloom
// y = max brightness

uniform vec3 u_bleed;
uniform vec3 u_ambience;

uniform vec2 u_camPos;
uniform vec2 u_screenSize;

void main()
{
    vec2 worldPos = v_vTexcoord * u_screenSize + u_camPos;

    vec3 lighting = u_ambience;
	vec3 bloom = vec3(0.0);

    for (int i = 0; i < 2; ++i)
    {
        vec4 pos = u_pos[i];
        vec4 color = u_color[i];
		color = vec4(color.rgb / 255.0, color.a);
		vec2 pbloom = u_bloom[i];

		float delta = max(distance(worldPos, pos.xy) - pos.z, 0.0);
        float distSq = delta * delta;

        // Modified inverse-square attenuation.
		// alpha / ((1 / illumination) * distSq + 1.0)
        float attenuation = color.a * pos.w / (distSq + pos.w);

		// Alternative:
		// delta = 1.0 / pos.w * delta + 1.0;
		// float attenuation = color.a / (distSq);

        // Fake bloom.
        vec3 unbound = color.rgb * pbloom.x * attenuation;
		bloom += clamp(unbound, 0.0, pbloom.y);
		
		lighting += color.rgb * attenuation;
    }

    lighting = clamp(lighting, 0.0, 1.0);

    vec4 base = texture2D(gm_BaseTexture, v_vTexcoord);

    gl_FragColor = v_vColour * vec4(base.rgb * lighting + (base.rgb + u_bleed) * bloom, base.a);
}
