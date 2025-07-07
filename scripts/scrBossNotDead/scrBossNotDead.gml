// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossNotDead() {
	
	//if canHurt {
	//if place_meeting(x,y,objBulletPar) {
	//with objBulletPar if (place_meeting(x,y,objBoss1) and fire and canHit) or (other.getHit and fire) {
	//if other.onFire <= 0 {
	//other.alarm[5] = 60
	//}
	//other.onFire = 3
	//}
	//if getHit or other.canHit {
	//	with objBulletPar {
	//if object_index != objHotdogPluh and object_index != objFlamethrowerBullet {
	//instance_destroy()	
	//	} }
	//damageGot += 1
	//HP -= 1
	//noDamage = 0
	//white = true
	//alarm[0] = 5
	//yoffset = 15
	//audio_play_sound(sndHit,1,false,1,0,random_range(0.8,1.2))
	//statX = x
	//statY = y
	
	//} }


scrAllEnemyGetDamage()
	

	if place_meeting(x,y,objPlayer) and objPlayer.hurtTime <= 0 and canHurt {
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

if yoffset != 40 {
yoffset = lerp(yoffset,40,0.1)	
}

if HP <= 0 {
	alarm[1] = 60
	global.shakePower = 1.5
	objCamera.alarm[0] = 10
	state = statesBoss1.died
	global.music = "BossEnd"
	global.bossDefeated = true
	alarm[3] = 1
}

// depth
depth = -bbox_bottom

//if jumpTime <= 0 {
//if y < objPlayer.y {
//	up = false	
//} else {
//	up = true
//} }

}
