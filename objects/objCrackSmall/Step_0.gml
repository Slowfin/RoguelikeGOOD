if image_index > image_number  -1 {
	image_speed = 0	
}

if die {
image_alpha -= 0.02	
}

if image_alpha <= 0 {
	instance_destroy()	
}