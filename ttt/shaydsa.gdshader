shader_type canvas_item;

uniform float animation_speed = 0.5;
uniform sampler2D noise_texture: hint_default_black, repeat_enable;

void fragment() {
	vec2 uv = vec2(UV.x,UV.y + TIME * animation_speed);
	vec4 noise_color = texture(noise_texture,uv);
	vec4 final_color = noise_color;
	final_color.rgb += vec3(UV.y);
	final_color.rbg = step(final_color.rgb, vec3(1));
	final_color.rgb = vec3(1) - final_color.rgb;
	final_color.a = final_color.r;
	final_color.rgb = vec3(1,.5,0);
	//final_color.a = .0 + UV.y;
	//final_color.rbg += vec3(1,0,0);
	//final_color.a = .1; // alpha color
	//final_color += vec4(.5); // علشان يبيض او يسود الصورة
	COLOR = final_color;
}

