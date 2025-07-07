//randomHue = irandom_range(0,50)
Hue = irandom_range(30,50)
MaxHue = irandom_range(-20,10)

fire = true
gun = objPlayer.curGun
canHit = false
maxSize = 0.07
hitId = 0

spawnX = x
spawnY = y
lifeLength = 47 * objPlayer.bulletLife


if gun != objPlayer.curGun {
instance_destroy()	
}

if gun = "flamethrower" {
	var bulletsGun = instance_nearest(x,y,objFlamethrower) 
var mouseDir = point_direction(bulletsGun.x,bulletsGun.y,mouse_x,mouse_y)
speed = 3 + objPlayer.bulletSpeed
direction = objFlamethrower.image_angle + (random_range(-15,15) /objPlayer.lessSpread)
image_angle = direction
damage = objFlamethrower.damage
} else {
	instance_destroy()	
}

if collision_line(x,y,objPlayer.x,objPlayer.y,objWall,false,true) {
instance_destroy()	
}

image_index = irandom(image_number-1)
