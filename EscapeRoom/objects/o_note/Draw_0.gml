/// @description Scale
image_alpha  = note_fade_in;
image_angle  = note_fade_in * 360;
x            = orig_x - note_fade_in * 45;
y            = orig_y - note_fade_in * 45;
image_xscale = orig_xscale + note_fade_in * 1;
image_yscale = orig_yscale + note_fade_in * 1;

draw_self();