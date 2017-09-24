/// @description Insert description here
// You can write your code in this editor
if(state != Trans_State.none) {
	//Handle in out
	draw_set_color(c_black);
	transition_x=0;
	transition_y=0;
	var _bias = .5;
	if(state == Trans_State.out) {
		_bias = .8;
		timer++;
		
		switch(trans_dir) {
			case Trans_Dir.left:	transition_x=scr_interpolate(-room_width,0,timer/transition_length,_bias); break;
			case Trans_Dir.right: transition_x=scr_interpolate(room_width,0,timer/transition_length,_bias); break;
		}
		//We done yet?
		if(timer >= transition_length) {
			timer=transition_length;
			room_goto(rm_name);
			state=Trans_State.in;
		}
	} else if(state == Trans_State.in) {
		_bias=.2;
		timer--;
	
		switch(trans_dir) {
			case Trans_Dir.left:  transition_x=scr_interpolate(room_width,0,timer/transition_length,_bias); break;
			case Trans_Dir.right: transition_x=scr_interpolate(-room_width,0,timer/transition_length,_bias); break;
		}
		//We done yet?
		if(timer <= 0) {
			timer = 0;
			state = Trans_State.none;
		}
	}
}
