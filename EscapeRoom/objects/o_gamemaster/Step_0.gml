/// @description Insert description here
// You can write your code in this editor
if(string_length(keypad_number) >= 5) {
	if(keypad_number == correct_number) {
		game_restart();
	}
	else {
		keypad_number = "";
		index = 0;
		for ( i=0; i<array_length_1d(o_gamemaster.current_numbers); i++)
			instance_destroy(o_gamemaster.current_numbers[i])
	}
}