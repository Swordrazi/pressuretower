// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load(_save, _variable, _variable_string){
	if (variable_struct_exists(_save,_variable_string)) {
		_variable = variable_struct_get(_save, _variable_string);
	}
}

function find_button(_id){
	for(var i = 0; i < o_Storeplace.max_button; i++) {
		if (i == o_button.id_) {
			return id;	
		}
	}
}