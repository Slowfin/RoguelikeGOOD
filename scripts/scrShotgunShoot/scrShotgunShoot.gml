// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrShotgunShoot(){

var mouseDirSelf = point_direction(x,y,mouse_x,mouse_y)

shootCd = maxShootCd / objPlayer.shootSpeed
objCamera.alarm[0] = 5
global.shakePower = 1
instance_create_layer(x + lengthdir_x(particleOffset,mouseDir),y + lengthdir_y(particleOffset,mouseDir),"Glow",objBulletParticle).image_angle = image_angle
	for (var i = 0; i < 40/objPlayer.lessSpread; i += 10/objPlayer.lessSpread) {

	with instance_create_layer(x + lengthdir_x(bulletOffset,mouseDirSelf),y + lengthdir_y(bulletOffset,mouseDirSelf),"Bullets",objShotgunBullet) { 
		gun = "shotgun"
		direction = mouseDirSelf - 15/objPlayer.lessSpread + i
		image_angle = direction 
		randomize()
		var fireRandom = irandom_range(1,5)
		if objPlayer.fireChanse >= fireRandom {
			fire = true	
		} else {
			fire = false
		}
	} }
bullets -= 1
audio_play_sound(sndGunshotgun,1,false,1,0,random_range(0.9,1.1))
shootKnockback = 4
alarm[1] = 10
global.cantChange = 5

}