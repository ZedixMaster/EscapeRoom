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

// Message Array
message[0] = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
message[1] = "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";
message[2] = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.";

// Current message, these need to be initialized...
message_index = 0;
message_length = array_length_1d(message);
message_to_draw = "";
message_speed = 0.5;
chars_drawn = 0;
hold_down_char = "E";
fill_press_char = "F";
current_message_length = string_length(message[message_index]);
current_message_height = string_height(message[message_index]);
last_break_index = 0;
breaked_this_many_times = 0;
message_padding = 50;

lerp_scaler = 0;
orig_xscale = 0;
orig_yscale = 0;
textbox_fade_in = 0;