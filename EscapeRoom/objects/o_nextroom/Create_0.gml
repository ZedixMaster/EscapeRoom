/// @description Initialize
image_speed = 0;

enum Trans_dir{left, right};
enum Trans_State{none, out, in};

state = Trans_State.none;
trans_dir = Trans_dir.left;

timer = 0;
transition_length = room_speed/4;
rm_name = rm_backwall;
transition_x = 0;
transition_y = 0;