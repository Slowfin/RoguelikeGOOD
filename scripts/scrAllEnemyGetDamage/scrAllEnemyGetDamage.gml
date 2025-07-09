// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrAllEnemyGetDamage(){

if canHurt {
with objBulletPar if place_meeting(x,y,other) {
	if object_index != objHotdogPluh and object_index != objFlamethrowerBullet {
		other.getHit = true
		instance_destroy()	
		}
	with other {
if getHit and canHurt {
	if other.fire {
		if onFire <= 0 {
		alarm[5] = 1
	}
		onFire = 3
	}	
	damageGot += other.damage
	HP -= other.damage
	noDamage = 0
	white = true
	alarm[0] = 5
	yoffset = 15
	audio_play_sound(sndHit,1,false,1,0,random_range(0.8,1.2))
	statX = x
	statY = y
	getHit = false
	} } } }

}