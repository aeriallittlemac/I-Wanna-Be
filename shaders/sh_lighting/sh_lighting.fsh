varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_pos[16];
// xy = position
// z  = radius
// w  = illumination

uniform vec4 u_color[16];
// rgb = color
// a   = intensity

uniform vec4 u_bloom[16];
// x = bloom
// y = max brightness
// z = lower angle
// w = higher angle

uniform vec3 u_bleed;
uniform vec3 u_ambience;

uniform vec4 u_screen;
// xy = screen size
// zw = camera position

void main()
{
    vec2 worldPos = v_vTexcoord * u_screen.xy + u_screen.zw;

    vec3 lighting = u_ambience;
	vec3 bloom = vec3(0.0);
	float bleedMag = length(u_bleed);

    for (int i = 0; i < 16; ++i)
    {
        vec4 pos = u_pos[i];
        vec4 color = u_color[i];
		color = vec4(color.rgb / 255.0, color.a);
		vec4 pbloom = u_bloom[i];

		float delta = max(distance(worldPos, pos.xy) - pos.z, 0.0);
        float distSq = delta * delta;

        // Modified inverse-square attenuation.
		// alpha / ((1 / illumination) * distSq + 1.0)
        float attenuation = color.a * pos.w / (distSq + pos.w);

		// Alternative:
		// delta = 1.0 / pos.w * delta + 1.0;
		// float attenuation = color.a / (distSq);
		
		vec2 v = worldPos - pos.xy;
		float angle = mod(degrees(atan(-v.y, v.x)), 360.0);
		float lower = mod(pbloom.z, 360.0);
		float upper = mod(pbloom.w, 360.0);
		float between = step(lower, angle) * step(angle, upper);
		float in_bounds = max(float(
			(upper == lower) 
			|| (upper > lower && between > 0.0) 
			|| (lower > upper && (angle > lower || angle < upper))
		), bleedMag);

        // Fake bloom.
        vec3 unbound = color.rgb * pbloom.x * attenuation;
		bloom += clamp(unbound, 0.0, pbloom.y) * in_bounds;
		
		lighting += color.rgb * attenuation * in_bounds;
    }

    lighting = clamp(lighting, 0.0, 1.0);

    vec4 base = texture2D(gm_BaseTexture, v_vTexcoord);

    gl_FragColor = v_vColour * vec4(base.rgb * lighting + (base.rgb + u_bleed) * bloom, base.a);
}
