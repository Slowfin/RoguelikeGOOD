if place_meeting(x,y,objWall) {
	instance_destroy()	
}

if distance_to_point(spawnX,spawnY) > lifeLength {
	instance_destroy()
}

if distance_to_point(spawnX,spawnY) > lifeLength - 40 * objPlayer.bulletLife {
speed = lerp(speed,0.5,0.1) }