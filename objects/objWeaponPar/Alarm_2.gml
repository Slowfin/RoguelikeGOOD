if reload = true and image_index < image_number -1 {
image_index += 1
alarm[2] = ceil((reloadTime / objPlayer.reloadSpeed) / image_number -1)
}