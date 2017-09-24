/// @description Insert description here
// You can write your code in this editor
if(global.showingText)
	return;

condition = false;
	
switch(my_inventory_type) {
	case inventory_type.box: {
		if ( global.items[inventory_type.box].used ) {
			message[0] = "The box is burning, but now it's to hot to get ... ";
			if ( global.items[inventory_type.bucket].acquired && global.items[inventory_type.bucket].active )
				message[1] = "Hey, now I can put out the fire and not have a useless bucket of water, swoon.";

			old_inventory_type = my_inventory_type;
			my_inventory_type = inventory_type.bucket;
		} else
			condition = global.items[inventory_type.box].acquired;
		break;
	}
	case inventory_type.valve: {
		if ( global.items[inventory_type.valve].used ) {
			message[0] = "Um... running water, cool ?";
			if ( global.items[inventory_type.bucket].acquired )
				message[1] = "Bet I can fill up with this bucket if I click it again... oh no, did I just break the fourth wall?";

			old_inventory_type = my_inventory_type;
			my_inventory_type = inventory_type.bucket;
		} else
		 	condition = global.items[inventory_type.valve].acquired;
		break;
	}
	case inventory_type.bucket: {
		if ( inventory_type.valve == old_inventory_type) {
			condition = global.items[inventory_type.bucket].acquired;
		} else if ( inventory_type.box == old_inventory_type) {
			condition = global.items[inventory_type.bucket].active;
		}
		break;
	}
	default: {
		break;
	}
}

if ( ! condition )
	scr_make_textbox(message);