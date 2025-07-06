// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrHotdogShoot(){

shootCd = maxShootCd / objPlayer.shootSpeed
objCamera.alarm[0] = 5
global.shakePower = 0.25
with instance_create_layer(x + lengthdir_x(14,mouseDir),y + lengthdir_y(14,mouseDir),"Glow",objBulletParticle) { 
	image_angle = other.image_angle
	sprite_index = sprBulletParticle4
}
	with instance_create_layer(x + lengthdir_x(8,mouseDir),y + lengthdir_y(8,mouseDir),"Player",objBulletHotdog) {
		gun = "hotdog"
		randomize()
		var fireRandom = irandom_range(1,5)
		if objPlayer.fireChanse >= fireRandom {
			fire = true	
		} else {
			fire = false
		}
	}
bullets -= 1
shootKnockback = 2
audio_play_sound(sndWoosh2,1,false,1,0,random_range(0.9,1.1))
alarm[1] = 10
global.cantChange = 5

}