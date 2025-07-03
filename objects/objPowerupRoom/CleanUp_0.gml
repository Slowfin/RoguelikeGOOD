if instance_exists(item) {
	
	
	
	
with item {
	if object_is_ancestor(object_index,objWeaponPar) {
		if inInventory == false {
			instance_destroy()
	} 
}
}


with item {
	if !object_is_ancestor(object_index,objWeaponPar) {
	instance_destroy()
	}
}






}

