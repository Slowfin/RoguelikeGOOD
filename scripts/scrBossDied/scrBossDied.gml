// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossDied(){
	
	path_end()	
	
	
	image_speed = 1
	speed = 0
	jumpVsp = 0
	
	sprite_index = spIdle
	
	image_angle = lerp(image_angle,90,0.1)

	deadTimer += 1	


if deadTimer >= 120 {
	instance_destroy()
}

		if !place_meeting(x,y,objBulletPar) and noDamage < 60 {
	noDamage += 1 
}

if noDamage >= 60 {
	damageGot = 0
}

if white {
	image_blend = c_red	
} else {
	image_blend = c_white	
}

}