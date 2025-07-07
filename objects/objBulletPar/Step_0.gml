if place_meeting(x,y,objWall) {
	instance_destroy()	
}

if distance_to_point(spawnX,spawnY) > lifeLength {
	instance_destroy()
}