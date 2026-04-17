//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_grayscaleAmount;

void main()
{
    vec4 og_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	
	float gray = 
		og_color.r * 0.299 +
		og_color.g * 0.587 +
		og_color.b * 0.114;

	vec4 grayscale = vec4(gray,gray,gray, og_color.a);
	
	
	gl_FragColor = mix(og_color, grayscale, u_grayscaleAmount);
}