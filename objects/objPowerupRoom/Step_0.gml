if place_meeting(x,y,objPlayer) and objPlayer.state != statesPlayer.dead {
	objCamera.camX = x
	objCamera.camY = y
}	


if place_meeting(x,y,objPlayer) and shop {
	global.music = "Shop"	
} else if place_meeting(x,y,objPlayer) and !shop  {
	if global.bossDefeated == false {
	global.music = "Area"	 
	}
	if global.bossDefeated == true {
	global.music = noone
	}
}

