/// @description Message Displayer

/** -------------------------------------------------------------------------------------*
*   The message will scroll as long as it can get another char,
*   otherwise, on hold_down_char press it will get the next message.
*   On the last message, it will destroy the message instance.

*   If the string-width becomes longer than the sprite it will break
*   the text onto a new line, therefore wrapping it as to not scroll forever.

*   It detects the previous space to get where to break the line.
*   If you use a message with NO spaces and it's longer than the sprite,
*   this will infinetly loop, I am not putting in a check because that's stupid to do.
*   :)
*   -------------------------------------------------------------------------------------*/

// TODO add noise per char...
textbox_fade_in = lerp(0,1, lerp_scaler);

// Fading in
if (lerp_scaler < 1) {
	lerp_scaler +=.01 * random_range(1,15);
} else {
	textbox_fade_in = 1;
}

if (chars_drawn < current_message_length) {
	// If holding down speed up, otherwise feed chars normally.
	message_speed   = keyboard_check(ord(hold_down_char));
	chars_drawn    += (1 + message_speed * 2) + breaked_this_many_times;

	// Do we need to word wrap?
	if ( string_width(string_copy(message[message_index], last_break_index, chars_drawn - last_break_index)) > sprite_width - message_padding * 2) {
		break_index = chars_drawn

		while ( string_char_at(message[message_index], break_index) != " ") {
			break_index -= 1;
			if (break_index <= 0)
				return
		}

		message[message_index] = string_copy(message[message_index], 0, break_index) + "\n" + string_copy(message[message_index], break_index + 1, current_message_length)
		current_message_length += 1;
		last_break_index = break_index;
		breaked_this_many_times++;
	}
	
	// Draw uses this to draw the actual string
	message_to_draw = string_copy(message[message_index], 0, chars_drawn);
} 
else {
	// If we have another message continue, otherwise suicide.
	if (keyboard_check_pressed(ord(hold_down_char))) {
		if (message_index < message_length - 1) {
			message_index += 1;
			current_message_length = string_length(message[message_index]);
			current_message_height = string_height(message[message_index]);
			chars_drawn = 0;
			message_to_draw = "";
			last_break_index = 0;
			breaked_this_many_times = 0;
		} else {
			instance_destroy();
		}
	}
}