// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrRifleShoot(){
		
shootCd = maxShootCd / objPlayer.shootSpeed
objCamera.alarm[0] = 5
global.shakePower = 0.5
with instance_create_layer(x + lengthdir_x(particleOffset,mouseDir),y + lengthdir_y(particleOffset,mouseDir),"Glow",objBulletParticle) { 
	image_angle = other.image_angle
	sprite_index = sprBulletParticle3
}
	with instance_create_layer(x + lengthdir_x(bulletOffset,mouseDir),y + lengthdir_y(bulletOffset,mouseDir),"Bullets",objPistolBullet) {
		gun = "rifle"
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
audio_play_sound(sndGunshot2,1,false,1,0,random_range(0.9,1.1))
alarm[1] = 5
global.cantChange = 5
	
}