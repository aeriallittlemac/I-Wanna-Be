varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 u_col1; // darkest adjustable
uniform vec3 u_col2;
uniform vec3 u_col3;
uniform vec3 u_col4;
uniform vec3 u_col5;
uniform vec3 u_col6; // lightest adjustable

void main()
{
    vec4 base = texture2D(gm_BaseTexture, v_vTexcoord);

    float lum = dot(base.rgb, vec3(0.299, 0.587, 0.114));

    vec3 col0 = vec3(0.0, 0.0, 0.0); // fixed black
    vec3 col7 = vec3(1.0, 1.0, 1.0); // fixed white

    // Band boundaries (rotated: each band now uses the previous band's old width):
    //   black : 0.0000 - 0.3213   -- was white's width
    //   col1  : 0.3213 - 0.4225   -- was black's width
    //   col2  : 0.4225 - 0.4825   -- was col1's width
    //   col3  : 0.4825 - 0.5625   -- was col2's width
    //   col4  : 0.5625 - 0.6625   -- was col3's width
    //   col5  : 0.6625 - 0.8313   -- was col4's width
    //   col6  : 0.8313 - 0.8988   -- was col5's width
    //   white : 0.8988 - 1.0000   -- was col6's width
    vec3 outColor;

    if (lum < 0.3213) {
        outColor = col0;
    } else if (lum < 0.4225) {
        outColor = u_col1;
    } else if (lum < 0.4825) {
        outColor = u_col2;
    } else if (lum < 0.5625) {
        outColor = u_col3;
    } else if (lum < 0.6625) {
        outColor = u_col4;
    } else if (lum < 0.8313) {
        outColor = u_col5;
    } else if (lum < 0.8988) {
        outColor = u_col6;
    } else {
        outColor = col7;
    }

    gl_FragColor = v_vColour * vec4(outColor, base.a);
}