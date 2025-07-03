// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrMadAttack(){
	scrMadNotDead()
	path_end()
	
	if sprite_index != sprMadEnemyUnmad {
	  if attack == false {
	sprite_index = sprMadEnemyGetMad
	  }
	  if attack == true {
	sprite_index = sprMadEnemyAttack
	  }
	}
	
	if image_index > 8 and !attack {
		attack = true
		attackTimer = attackLong
		attackSpeedDec = 0
	}
	
	if attackSpeedDec >= 0 {
			attackSpeedDec -= 1
		}
	
	if attack and sprite_index != sprMadEnemyUnmad {
		attackTimer	-= 1
		if attackSpeedDec <= 0 {
			instance_create_layer(x,y,"EnemiesBullets",objMadEnemyBullet).direction += random_range(-30,30)
			attackSpeedDec = attackSpeed
			audio_stop_sound(sndMadAttack)
			audio_play_sound(sndMadAttack,1,false,1,0,random_range(0.95,1.05))
		}
	}
	
	if attackTimer <= 0 {
		sprite_index  = sprMadEnemyUnmad
	}
	
	if sprite_index = sprMadEnemyUnmad and  image_index > 7 {
		attack = false
		state = statesMad.alert	
		sprite_index = sprMadEnemy
	}
	
}