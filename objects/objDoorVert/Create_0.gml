bossDoor = false


if distance_to_object(objBossRoom) <= 5 {
	bossDoor = true
} else {
	bossDoor = false
}


if global.area == "grey" {
	if bossDoor {
	sprite_index = sprDoorVertBoss
	}
	else {
	sprite_index = sprDoorVert	
	}
	
}
if global.area == "green" {
	if bossDoor {
	sprite_index = sprDoorVertBossGreen
	}
	else {
	sprite_index = sprDoorVertGreen
	}
}
if global.area == "desert" {
	if bossDoor {
	sprite_index = sprDoorVertBossDesert
	}
	else {
	sprite_index = sprDoorVertDesert	
	}
}

