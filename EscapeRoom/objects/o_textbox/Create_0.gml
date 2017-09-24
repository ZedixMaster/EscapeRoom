/// @description Message Init

/** -------------------------------------------------------------------------------------*
*                           |Used by|
*   message_index           |Step| Current message being displayed.
*   message_length          |Step| How many messages we have total.
*   message_speed           |Step| How fast to draw the message (Whether we hold the key or not.)
*   current_message_length  |Step| Current message string length.
*   chars_drawn             |Step| How many chars are drawn for the current message.
*   hold_down_char          |Step| Key to speed up the text.
*   fill_press_char         |Step| Key to fill in the text immediately.
*   last_break_index        |Step| Where did we put the last line break, used for word wrapping to
*                                  what text we need to copy over for the new line break.
*   breaked_this_many_times |Step| When word wrapping this needs to be added to chars drawn
*                                  so that it continues to draw the correct amount of text.
*   message_padding         |Both| Padding around the text.and where to line break.
*   current_message_height  |Draw| Sprite string height of current message ( used by draw ).
*   message_to_draw         |Draw| Current message to draw.
*   -------------------------------------------------------------------------------------*/

// Current message, these need to be initialized...
messages = []
message_length = -1;

message_index = 0;
message_to_draw = "";
message_speed = 0.5;
chars_drawn = 0;
hold_down_char = "E";
fill_press_char = "F";
last_break_index = 0;
breaked_this_many_times = 0;
message_padding = 50;

lerp_scaler = 0;
orig_xscale = 0;
orig_yscale = 0;
textbox_fade_in = 0;