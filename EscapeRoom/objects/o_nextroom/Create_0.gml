/// @description Initialize
image_speed = 0;
global.showingText = false;

///Transition Stuff
enum Trans_Dir{left,right};
enum Trans_State{none,out,in};
state=Trans_State.none;
trans_dir = Trans_Dir.left; //Doesn't matter.

timer=0;
transition_length=room_speed/4;
rm_name = noone;
transition_x=0;
transition_y=0;