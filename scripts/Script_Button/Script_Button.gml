// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_cost(item_id, cost){
	if (o_Storeplace.item_database[item_id].item_amount >= cost) {
		return true;
	} else {
		return false;	
	}
}

function unlock_button(unlock_id){
	o_Storeplace.button_unlock[unlock_id] = true;
}