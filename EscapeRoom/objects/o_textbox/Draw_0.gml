/// @description Draw current message
/** -------------------------------------------------------------------------------------*
*   It draws the text box...
*   -------------------------------------------------------------------------------------*/
draw_self();
draw_text_color(
	x - sprite_width / 2 + message_padding,
	y - sprite_height/ 2 + current_message_height,
	message_to_draw,
	1, 1, 1, 1, 1
);