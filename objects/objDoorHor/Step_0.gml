with objWall if place_meeting(x,y,objDoorHor) {
	instance_destroy()	
}

if global.fight {
	image_index = 0	
} else {
	image_index = 1 	
}

if distance_to_object(objBossRoom) <= 5 {
	bossDoor = true
} else {
	bossDoor = false
}


if global.area == "grey" {
	if bossDoor {
	sprite_index = sprDoorHorBoss
	}
	else {
	sprite_index = sprDoorHor	
	}
	
}
if global.area == "green" {
	if bossDoor {
	sprite_index = sprDoorHorBossGreen
	}
	else {
	sprite_index = sprDoorHorGreen
	}
}
if global.area == "desert" {
	if bossDoor {
	sprite_index = sprDoorHorBossDesert
	}
	else {
	sprite_index = sprDoorHorDesert	
	}
}
