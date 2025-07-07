// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrFlamethrowerShoot() {
		
shootCd = maxShootCd / objPlayer.shootSpeed
objCamera.alarm[0] = 2
global.shakePower = 0.5
with instance_create_layer(x + lengthdir_x(particleOffset,mouseDir),y + lengthdir_y(particleOffset,mouseDir),"Glow",objBulletParticle) { 
	image_angle = other.image_angle
	sprite_index = noone
}
	with instance_create_layer(x + lengthdir_x(bulletOffset,mouseDir),y + lengthdir_y(bulletOffset,mouseDir),"Bullets",objFlamethrowerBullet) {
		gun = "flamethrower"
			fire = true
	}
	
bullets -= 1
shootKnockback = 2
audio_play_sound(sndFire,1,false,1,0,random_range(0.7,1.3))
alarm[1] = 2
global.cantChange = 5
	
}