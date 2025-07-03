// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrEnemyAttack(){
	scrEnemyNotDead()
	path_end()	
	sprite_index = sprEnemyAttack
	
	if image_index > 2 and !attack {
		attack = true
		instance_create_layer(x,y,"EnemiesBullets",objEnemyBullet)
		audio_stop_sound(sndCuteAttack)
		audio_play_sound(sndCuteAttack,1,false,1,0,random_range(0.95,1.05))
	}
	
	if image_index > 4 and attack {
		attack = false
		state = states.alert	
	}
	
}