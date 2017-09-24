/// @description Go to room
if (global.showingText)
	return;
switch(room) {
	case rm_backwall: {
		if(trans_dir == Trans_Dir.left) {
			rm_name = rm_leftwall;
			break;
		}
		else {
			rm_name = rm_rightwall;
			break;
		}
	} 
	case rm_rightwall: {
		if(trans_dir == Trans_Dir.left) {
			rm_name = rm_backwall;
			break;
		}
		else {
			rm_name = rm_door;
			break;
		}
	}
	case rm_door: {
		if(trans_dir == Trans_Dir.left) {
			rm_name = rm_rightwall;
			break;
		}
		else {
			rm_name = rm_leftwall;
			break;
		}
	}
	case rm_leftwall: {
		if(trans_dir == Trans_Dir.left) {
			rm_name = rm_door;
			break;
		}
		else {
			rm_name = rm_backwall;
			break;
		}
	}
}

state = Trans_State.out;
