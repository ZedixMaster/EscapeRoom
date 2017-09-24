/// @description Insert description here
// You can write your code in this editor
switch(my_inventory_type) {
	case inventory_type.box: {
		if (old_inventory_type == inventory_type.box)
			condition = global.items[inventory_type.box].acquired;
		else
			condition = global.items[inventory_type.bucket].active;
		break;
	}
	case inventory_type.valve: {
		if (old_inventory_type == inventory_type.valve)
			condition = global.items[inventory_type.valve].acquired;
		else
			condition = global.items[inventory_type.bucket].acquired;
		break;
	}
	case inventory_type.bucket: {
		if (old_inventory_type == inventory_type.valve)
			condition = global.items[inventory_type.bucket].acquired;
		else if ( old_inventory_type == inventory_type.box)
			condition = global.items[inventory_type.bucket].active;
		break;
	}
	default: {
		break;
	}
}

if(!condition)
	image_alpha = 0;
else
	image_alpha = 1;