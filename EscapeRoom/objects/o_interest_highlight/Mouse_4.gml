/// @description Insert description here
// You can write your code in this editor
//		scr_activate_inventory_item(activation);
if(global.showingText)
	return;

make_sound = false;

switch(my_inventory_type) {
	case inventory_type.box: {
		if ( old_inventory_type == inventory_type.box && global.items[inventory_type.box].acquired) {
			scr_use_inventory_item(inventory_type.box);
			old_inventory_type = my_inventory_type;
			my_inventory_type = inventory_type.bucket;
			make_sound = true;
			if ( ! ( global.items[inventory_type.bucket].acquired || global.items[inventory_type.bucket].active ) )
				image_alpha = 0;
		} else if ( old_inventory_type == inventory_type.bucket && global.items[inventory_type.bucket].active) {
			scr_acquire_inventory_item(inventory_type.box);
			scr_activate_inventory_item(inventory_type.box);
			instance_destroy(o_key);
			global.has_key = true;
			make_sound = true;
			message[0] = "Now what would I do with a key?";
			scr_make_textbox(message)
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
			make_sound = true;
			if ( !global.items[inventory_type.bucket].acquired )
				image_alpha = 0;
		}
		break;
	}
	case inventory_type.bucket: {
		if ( old_inventory_type == inventory_type.valve && global.items[inventory_type.bucket].acquired) {
			instance_destroy(deletion);
			scr_activate_inventory_item(inventory_type.bucket);
			make_sound = true;
			instance_destroy(self);
			message[0] = "Milking the valve for some good ol' h2o.";
			scr_make_textbox(message)
		} else if ( old_inventory_type == inventory_type.box && global.items[inventory_type.bucket].active ) {
			layer_background_sprite(layer_background_get_id("Background"), s_unlitfire);
			global.fireplaceIsDead = true;
			o_key.image_alpha = 1;
			make_sound = true;
			scr_use_inventory_item(inventory_type.bucket);
			old_inventory_type = my_inventory_type;
			my_inventory_type = inventory_type.box;
			message[0] = "Begone fire demon!!";
			scr_make_textbox(message)
		}
		break;
	}
	default: {
		break;
	}
}


if(make_sound)
	audio_play_sound(a_puzzle, 4, false);