//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	//passing the color from the sprite and manipulating what is going to be drawn
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	//max out red,green,blue pixel to get white
	gl_FragColor = vec4(1.0,1.0,1.0,gl_FragColor.a);
}
