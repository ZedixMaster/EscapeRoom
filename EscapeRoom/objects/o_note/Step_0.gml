/// @description Scale up bitch

note_fade_in = lerp(0,1, lerp_scaler);

if (lerp_scaler < 1) {
	lerp_scaler +=.01 * random_range(1,15);
} else {
	note_fade_in = 1;
	instance_create_layer(512, 660, "Instances", o_textbox);
}