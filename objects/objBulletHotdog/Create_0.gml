fire = false
gun = objPlayer.curGun
canHit = false



targetX = mouse_x
targetY = mouse_y
spawnX = x
spawnY = y

if x < targetX {
	xLeft = true
	xRight = false
}  else {
	xRight = true
	xLeft = false
}

if y < targetY {
	yUp = true
	yDown = false
}  else {
	yDown = true
	yUp = false
}


z = 1
grv = 0.2
zspd = 0
flyHeight = ( distance_to_point(mouse_x,mouse_y) / 40 ) 
if flyHeight > 5 {
	flyHeight = 5
}
zspd = flyHeight


if gun != objPlayer.curGun {
instance_destroy()	
}



if gun = "hotdog" {
	var bulletsGun = instance_nearest(x,y,objHotdog) 
var mouseDir = point_direction(bulletsGun.x,bulletsGun.y,mouse_x,mouse_y)
speed = 4
if x < bulletsGun.x {
	image_yscale = -1	
}
direction = mouseDir
image_angle = direction
} else {
	instance_destroy()	
}

