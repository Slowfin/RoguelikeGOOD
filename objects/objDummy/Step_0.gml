if place_meeting(x,y,objBulletPar) {
	with objBulletPar if place_meeting(x,y,objDummy) if canHit {		
	if object_index != objHotdogPluh {
	instance_destroy()	
		}	
	other.damageGot += damage
	other.HP -= damage
	other.noDamage = 0
	other.white = true
	other.alarm[0] = 5
	other.yoffset = 15
	audio_play_sound(sndHit,1,false,1,0,random_range(0.8,1.2))
	other.statX = x
	other.statY = y
	
	}
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