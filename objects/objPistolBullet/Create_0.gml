fire = false
gun = objPlayer.curGun



if gun != objPlayer.curGun {
instance_destroy()	
}

if gun = "pistol" {
	var bulletsGun = instance_nearest(x,y,objPistol) 
var mouseDir = point_direction(bulletsGun.x,bulletsGun.y,mouse_x,mouse_y)
speed = 3 + objPlayer.bulletSpeed
direction = mouseDir + random_range(-7,7)
image_angle = direction
alarm[0] = 40 * objPlayer.bulletLife
damage = objPistol.damage
} else if gun = "rifle" {
	var bulletsGun = instance_nearest(x,y,objRifle) 
	sprite_index = sprBulletRifle
var mouseDir = point_direction(bulletsGun.x,bulletsGun.y,mouse_x,mouse_y)
speed = 4 + objPlayer.bulletSpeed
direction = mouseDir + random_range(-7,7)
image_angle = direction
alarm[0] = 50 * objPlayer.bulletLife
damage = objRifle.damage
} else {
	instance_destroy()	
}

if collision_line(x,y,objPlayer.x,objPlayer.y,objWall,false,true) {
instance_destroy()	
}