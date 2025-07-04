instance_destroy(shopkeeper)
if instance_exists(randomItem1)  {
with randomItem1 if object_is_ancestor(object_index,objWeaponPar) and inInventory == false {
			instance_destroy()
		}

with randomItem1 if !object_is_ancestor(object_index,objWeaponPar) {
			instance_destroy()
	}
}
if instance_exists(randomItem2) {
with randomItem2 if object_is_ancestor(object_index,objWeaponPar) and inInventory == false {
			instance_destroy()
		}

with randomItem2 if !object_is_ancestor(object_index,objWeaponPar) {
			instance_destroy()
	}
}
if instance_exists(randomItem3) {
with randomItem3 if object_is_ancestor(object_index,objWeaponPar) and inInventory == false {
			instance_destroy()
		}

with randomItem3 if !object_is_ancestor(object_index,objWeaponPar) {
			instance_destroy()
	}
}

