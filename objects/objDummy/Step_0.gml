scrAllEnemyGetDamage()

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