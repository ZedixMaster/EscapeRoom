/// @description Draw current message
/** -------------------------------------------------------------------------------------*
*   It draws the text box...
*   -------------------------------------------------------------------------------------*/
if ((message_length == -1)) {
	return;
}

image_alpha  = textbox_fade_in / 1;
image_xscale = orig_xscale + textbox_fade_in * 16;
image_yscale = orig_yscale + textbox_fade_in * 3;

draw_self();

draw_text_color(
	x - sprite_width / 2 + message_padding,
	y - sprite_height/ 2 + current_message_height,
	message_to_draw,
	1, 1, 1, 1, 1
);