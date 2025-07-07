fire = false
gun = objPlayer.curGun
canHit = true

spawnX = x
spawnY = y

if gun != objPlayer.curGun {
instance_destroy()	
}

if gun = "pistol" {
	lifeLength = 150 * objPlayer.bulletLife
	var bulletsGun = instance_nearest(x,y,objPistol) 
var mouseDir = point_direction(bulletsGun.x,bulletsGun.y,mouse_x,mouse_y)
speed = 3 + objPlayer.bulletSpeed
direction = mouseDir + (random_range(-7,7) /objPlayer.lessSpread)
image_angle = direction
alarm[0] = 40 * objPlayer.bulletLife
damage = objPistol.damage
} else if gun = "rifle" {
	lifeLength = 220 * objPlayer.bulletLife
	var bulletsGun = instance_nearest(x,y,objRifle) 
	sprite_index = sprBulletRifle
var mouseDir = point_direction(bulletsGun.x,bulletsGun.y,mouse_x,mouse_y)
speed = 4 + objPlayer.bulletSpeed
direction = mouseDir +(random_range(-7,7) /objPlayer.lessSpread)
image_angle = direction
alarm[0] = 300
damage = objRifle.damage
} else {
	instance_destroy()	
}

if collision_line(x,y,objPlayer.x,objPlayer.y,objWall,false,true) {
instance_destroy()	
}