/// @description acquire_inventory_item(index)
/// @function activates an inventory item
/// @param index what item to activate
global.items[argument[0]].used        = true;
global.items[argument[0]].image_alpha = 0;