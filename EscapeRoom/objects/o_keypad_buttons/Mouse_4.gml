/// @description Insert description here
// You can write your code in this editor
if(!global.keypad_shown)
	return;

o_gamemaster.keypad_number += string(number_shown);
posx = o_keypad_numbers.x + o_gamemaster.index * 64;
posy = o_keypad_numbers.y;
o_gamemaster.current_numbers[o_gamemaster.index] = instance_create_layer(posx,posy,"Instances", o_keypad_numbers);
o_gamemaster.current_numbers[o_gamemaster.index].image_index = number_shown;
o_gamemaster.index ++;

audio_play_sound(a_keypad, 4, false);