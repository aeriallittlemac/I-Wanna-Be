varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 u_col1; // zeroed out this round
uniform vec3 u_col2;
uniform vec3 u_col3; // zeroed out this round
uniform vec3 u_col4;
uniform vec3 u_col5; // zeroed out this round
uniform vec3 u_col6;

void main()
{
    vec4 base = texture2D(gm_BaseTexture, v_vTexcoord);

    float lum = dot(base.rgb, vec3(0.299, 0.587, 0.114));

    vec3 col0 = vec3(0.0, 0.0, 0.0); // fixed black
    // white (col7) intentionally unused this round — zero width

    // Radical weighting: only bands 1, 3, 5, 7 get any width (25% each).
    //   black : 0.00 - 0.25   (25%)
    //   col1  : 0.25 - 0.25   (0%, never appears)
    //   col2  : 0.25 - 0.50   (25%)
    //   col3  : 0.50 - 0.50   (0%, never appears)
    //   col4  : 0.50 - 0.75   (25%)
    //   col5  : 0.75 - 0.75   (0%, never appears)
    //   col6  : 0.75 - 1.00   (25%)
    //   white : 1.00 - 1.00   (0%, never appears)
    vec3 outColor;

    if (lum < 0.25) {
        outColor = col0;
    } else if (lum < 0.50) {
        outColor = u_col2;
    } else if (lum < 0.75) {
        outColor = u_col4;
    } else {
        outColor = u_col6; // catches the remaining 0.75-1.00, including lum == 1.0
    }

    gl_FragColor = v_vColour * vec4(outColor, base.a);
}