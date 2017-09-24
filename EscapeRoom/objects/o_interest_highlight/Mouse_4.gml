/// @description Insert description here
// You can write your code in this editor
//		scr_activate_inventory_item(activation);
if(global.showingText)
	return;

switch(my_inventory_type) {
	case inventory_type.box: {
		if ( old_inventory_type == inventory_type.box && global.items[inventory_type.box].acquired) {
			scr_use_inventory_item(inventory_type.box);
			old_inventory_type = my_inventory_type;
			my_inventory_type = inventory_type.bucket;
			if ( ! ( global.items[inventory_type.bucket].acquired || global.items[inventory_type.bucket].active ) )
				image_alpha = 0;
		} else if ( old_inventory_type == inventory_type.bucket && global.items[inventory_type.bucket].active) {
			scr_acquire_inventory_item(inventory_type.box);
			scr_activate_inventory_item(inventory_type.box);
			instance_destroy(o_key);
			instance_destroy(self);
		}
		break;
	}
	case inventory_type.valve: {
		if ( global.items[inventory_type.valve].acquired ) {
			instance_destroy(deletion);
			scr_use_inventory_item(inventory_type.valve);
			old_inventory_type = my_inventory_type;
			my_inventory_type = inventory_type.bucket;
			if ( !global.items[inventory_type.bucket].acquired )
				image_alpha = 0;
		}
		break;
	}
	case inventory_type.bucket: {
		if ( old_inventory_type == inventory_type.valve && global.items[inventory_type.bucket].acquired) {
			instance_destroy(deletion);
			scr_activate_inventory_item(inventory_type.bucket);
			instance_destroy(self);
		} else if ( old_inventory_type == inventory_type.box && global.items[inventory_type.bucket].active ) {
			layer_background_sprite(layer_background_get_id("Background"), s_unlitfire);
			global.fireplaceIsDead = true;
			o_key.image_alpha = 1;
			scr_use_inventory_item(inventory_type.bucket);
			old_inventory_type = my_inventory_type;
			my_inventory_type = inventory_type.box;
		}
		break;
	}
	default: {
		break;
	}
}