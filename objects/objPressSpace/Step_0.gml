image_angle += angle

if goBack == false {
angle += 0.010
} else {
angle -= 0.010
}


if angle < -0.3 {
	goBack = false
} if angle > 0.3 {
	goBack = true
}


if speed < 1 and Go = false {
speed += 0.025	
} else {
speed -= 0.010
Go = true
}

if speed <= 0 {
speed = 0	
}


