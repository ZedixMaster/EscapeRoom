/// @description Insert description here
// You can write your code in this editor
if(global.showingText)
	return;
switch(target_obj) {
	case o_bucket: {
		instance_destroy(o_bucket);
		instance_destroy(self);
		scr_acquire_inventory_item(inventory_type.bucket);
		break;
	}
	case o_vase: {
		instance_destroy(o_vase);
		instance_destroy(self);
		scr_acquire_inventory_item(inventory_type.valve);
		break;
	}
	case o_box: {
		instance_destroy(o_box);
		instance_destroy(self);
		scr_acquire_inventory_item(inventory_type.box);
		break;
	}
	default: {
		break;
	}
}

scr_make_textbox(message)
audio_play_sound(a_pickup, 4, false);