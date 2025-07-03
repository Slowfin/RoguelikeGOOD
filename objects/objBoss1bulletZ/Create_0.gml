randomize()
speed = random_range(1,2.5)
image_angle = direction
alarm[0] = 180
damage = 1

if global.area == "grey" {
	sprite_index = sprBoss1bullet
}
if global.area == "green" {
	sprite_index = sprBoss1bulletGreen
}
if global.area == "desert" {
	sprite_index = sprBoss1bulletDesert
}

image_xscale = choose(-1,1)
image_yscale = choose(-1,1)
image_index = random(image_number)

z =  1
zspd =  0
grv = 0.2
jumpHeight = random_range(2,7)

canHurt = false
isGrounded = false
zspd = jumpHeight

shadowSize = 1

spawnX = x
spawnY = y

//var dir = point_direction(x,y,objPlayer.x,objPlayer.y)
//while place_meeting(x,y,objWall) {
//	x += lengthdir_x(1,dir)	
//	y += lengthdir_y(1,dir)	
//}