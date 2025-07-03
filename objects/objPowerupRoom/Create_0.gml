roomX = 320
roomY = 180

type = irandom(3)
if type == 3 {
	if !instance_exists(objShop) {
	shop = true 
	}
	else {
	shop = false	
}
} else {
	shop = false	
}


if shop == false {
 scrRandomItem()
item = instance_create_layer(x+roomX/2,y+roomY/2,"Player",randomItem)
}

if shop == true {
item = instance_create_layer(x+roomX/2-12,y+roomY/2-16,"Player",objShop)
}

if place_meeting(x,y,objMobRoom) or place_meeting(x,y,objSpawnRoom) or place_meeting(x,y,objPowerupRoom) or place_meeting(x,y,objBossRoom)  {
	   	instance_destroy()
		objRoomGenerator.powerupRooms -= 1
}

