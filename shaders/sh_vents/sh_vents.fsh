varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 u_outline;     // colour for outlines (near black)
uniform vec3 u_fill;        // colour for everything else
uniform float u_threshold;  // luminance below this counts as an outline (0..1)

void main()
{
    vec4 base = texture2D(gm_BaseTexture, v_vTexcoord);

    float lum = dot(base.rgb, vec3(0.299, 0.587, 0.114));

    // step() returns 0.0 when lum < threshold (outline), 1.0 otherwise (fill)
    vec3 outColor = mix(u_outline, u_fill, step(u_threshold, lum));

    gl_FragColor = v_vColour * vec4(outColor, base.a);
}