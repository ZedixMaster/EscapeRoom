/// @description make_textbox(message[])
/// @function activates an inventory item
/// @param message[] messages to be displayed.
// Message Array

inst = instance_create_layer(room_width/2, room_height, "Instances", o_textbox);
inst.y -= inst.sprite_height;
inst.message = message;