shader_type canvas_item;

#include "DemoSceneInclude.gdshaderinc" 

uniform vec4 shaderinc_new_color_parameter = vec4(1.0);

/**
 * The behaviour of the following shader differ between the Compatibility and Forward+ rendering mode:
 * there is a conflict that must be resolved between the `shaderinc_new_color_parameter` uniform above
 * and the `shaderinc_new_color_parameter` parameter of the included `new_color` function below.
 *
 * In "Compatibility" mode, the behaviour seems the most coherent, as it is the parameter the function 
 * recieve that prevails. As such, the texture appears transparent.
 * 
 * In "Forward+" and "Mobile" modes, the recieved parameter for the `new_color` function is silently
 * substituted for the `shaderinc_new_color_parameter` uniform above. Thus, the sprite appears white
 * even if the passed parameter to the function is varying.
 */

void fragment() {
	COLOR = new_color(vec4(0.0));
}
