depth = -9999
//layer = layer_get_id("Bullets")

if place_meeting(x,y,objWall) {
	instance_destroy()	
}

Hue = lerp(Hue,MaxHue,0.1)

if distance_to_point(spawnX,spawnY) > lifeLength {
	instance_destroy()
} else if distance_to_point(spawnX,spawnY) > lifeLength - 30 {
	image_alpha = lerp(image_alpha,0,0.1)	
}

image_xscale += maxSize
image_yscale += maxSize

var myID = id
with objEnemyPar if place_meeting(x,y,other) and ds_list_find_index(hitBy,myID) == -1 and !getHit {
        getHit = true
		ds_list_add(hitBy,myID)
	}

