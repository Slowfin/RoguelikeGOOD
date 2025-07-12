if reload = true and image_index < image_number -1 and isActive and inInventory {
image_index += 1
alarm[2] = ceil((reloadTime / objPlayer.reloadSpeed) / image_number -1)
} else if reload == false and !shoot {
	sprite_index = sprite
}	