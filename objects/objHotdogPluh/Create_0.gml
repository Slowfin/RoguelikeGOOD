canHit = true
fire = true
damage = objHotdog.damage
audio_play_sound(sndPluh,1,false)
global.shakePower = 1
objCamera.alarm[0] = 5
alarm[0] = 1


//if place_meeting(x,y,objEnemyPar) {
//	if fire {
//	with objEnemyPar if place_meeting(x,y,objHotdogPluh) {
//	damageGot += global.fireDamage 
//	onFire = 3
//	self.alarm[5] = 60	
//	} }
//	with objEnemyPar if place_meeting(x,y,objHotdogPluh) {
//	damageGot += objHotdogPluh.damage
//	HP -= objHotdogPluh.damage
//	noDamage = 0
//	white = true
//	self.alarm[0] = 5
//	yoffset = 15
//	audio_play_sound(sndHit,1,false,1,0,random_range(0.8,1.2))
//	statX = x
//	statY = y
//	}
//}