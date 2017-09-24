/// @description Insert description here
// You can write your code in this editor
if(global.showingText)
	return;

condition = false;
	
switch(my_inventory_type) {
	case inventory_type.box: {
		if ( global.items[inventory_type.box].used ) {
			message[0] = "The box is burning, but now it's too hot to get ... Maybe I should just, try, to, grab it, OW!";
			if ( global.items[inventory_type.bucket].acquired && global.items[inventory_type.bucket].active )
				message[1] = "Oh yeah! This bucket of water will REALLY come in handy!";

			old_inventory_type = my_inventory_type;
			my_inventory_type = inventory_type.bucket;
		} else
			condition = global.items[inventory_type.box].acquired;
		break;
	}
	case inventory_type.valve: {
		if ( global.items[inventory_type.valve].used ) {
			message[0] = "Okay now I got running water.";
			if ( global.items[inventory_type.bucket].acquired )
				message[1] = "It's like this bucket was MADE for this purpose.";

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