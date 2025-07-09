fire = false
gun = objPlayer.curGun
canHit = true
alarm[0] = 300

spawnX = x
spawnY = y

if gun != objPlayer.curGun {
instance_destroy()	
}

if gun = "splitGun" {
	lifeLength = 40 * objPlayer.bulletLife
	var bulletsGun = instance_nearest(x,y,objSplitGun) 
var mouseDir = point_direction(bulletsGun.x,bulletsGun.y,mouse_x,mouse_y)
speed = 2 + objPlayer.bulletSpeed
image_angle = direction
damage = objSplitGun.damagePiece
} else {
	instance_destroy()	
}

if collision_line(x,y,objPlayer.x,objPlayer.y,objWall,false,true) {
instance_destroy()	
}

