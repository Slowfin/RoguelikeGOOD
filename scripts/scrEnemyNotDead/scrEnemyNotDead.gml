function scrEnemyNotDead() {
	
	scrAllEnemyGetDamage()
	
	if place_meeting(x,y,objPlayer) and objPlayer.hurtTime <= 0 {
	objPlayer.HP -= 1
	global.shakePower = 2
	objCamera.alarm[0] = 5
	objPlayer.hurtTime = objPlayer.baseHurtTime
}

	if !place_meeting(x,y,objBulletPar) and noDamage < 60 {
	noDamage += 1 
}

if noDamage >= 60 {
	damageGot = 0
}

if white {
	image_blend = c_red	
} else if onFire {
	image_blend = c_orange
} else {
	image_blend = c_white	
}

if yoffset != 25 {
yoffset = lerp(yoffset,25,0.1)	
}

if x > objPlayer.x  {
	image_xscale = -1	
}  else {
	image_xscale = 1	
} 

if HP <= 0 {
	alarm[1] = 60
	global.shakePower = 1.5
	objCamera.alarm[0] = 10
	state = states.died
}

// depth
depth = -bbox_bottom




}
