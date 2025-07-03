gun = objPlayer.curGun

if gun != objPlayer.curGun {
instance_destroy()	
}

if gun = "shotgun" {
	var bulletsGun = instance_nearest(x,y,objShotgun) 
var mouseDir = point_direction(bulletsGun.x,bulletsGun.y,mouse_x,mouse_y)
speed = 4 + objPlayer.bulletSpeed
alarm[0] = 25  * objPlayer.bulletLife
damage = objShotgun.damage
} else {
	instance_destroy()	
}


if collision_line(x,y,objPlayer.x,objPlayer.y,objWall,false,true) {
instance_destroy()	
}