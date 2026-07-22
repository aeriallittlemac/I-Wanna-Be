varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_pos[16];
// xy = position
// z  = radius
// w  = illumination

uniform vec2 u_angles[16];
// x = lower
// y = upper

uniform float u_padding;
uniform float u_blurRadius;
uniform float u_bleed;

uniform vec4 u_objPos;
uniform vec2 u_objSize;

void main()
{
	vec2 objPos = u_objPos.xy - u_objPos.zw - vec2(u_padding, u_padding);
	vec2 objSize = u_objSize + vec2(2.0 * u_padding, 2.0 * u_padding);
	vec2 worldPos = v_vTexcoord * objSize + objPos;
	float dec = 1.0 / u_blurRadius;
	vec4 pixel = texture2D(gm_BaseTexture, v_vTexcoord);
	float na = 0.0;

    for (int i = 0; i < 16; ++i)
    {
        vec4 pos = u_pos[i];
		vec2 angles = u_angles[i];
		vec2 v = normalize(pos.xy - worldPos);
		float alpha = 0.0;
		for (float j = 1.0; j <= u_blurRadius; ++j)
		{
			vec2 np = worldPos + v * j;
			float n_alpha = texture2D(gm_BaseTexture, (np - objPos) / objSize).a;
			
			// Prevents visual glitch where shadows appear floating opposite of the player from the light source.
			float antiFan = step(0.0, dot(pos.xy - worldPos, pos.xy - np));
			
			float angle = mod(degrees(atan(v.y, -v.x)), 360.0);
			float lower = mod(angles.x, 360.0);
			float upper = mod(angles.y, 360.0);
			float between = step(lower, angle) * step(angle, upper);
			float in_bounds = max(float(
				(upper == lower) 
				|| (upper > lower && between > 0.0) 
				|| (lower > upper && (angle > lower || angle < upper))
			), u_bleed);
			
			alpha = max(alpha, n_alpha * (1.0 - dec * (j - 1.0)) * antiFan * in_bounds);
		}
		float delta = distance(pos.xy, worldPos);
		
		// Alternative:
		// float delta = max(distance(pos.xy, worldPos) - pos.z, 0.0);
		
		float distSq = delta * delta;
		na = max(na, alpha * pos.w / (distSq + pos.w));
    }
	pixel.a = max(pixel.a, na);
    gl_FragColor = v_vColour * pixel;
}
