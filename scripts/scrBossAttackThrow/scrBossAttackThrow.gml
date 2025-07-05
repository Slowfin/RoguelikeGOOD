// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossAttackThrow(){
	scrBossNotDead()
	randomize()
	path_end()
	
	
	  if attack == 0 {
	sprite_index = spPreThrow
		}
		
	if attack == 0 and image_index > image_number - 1 {
			attack = 1
			alarm[4] = 30
			audio_play_sound(sndBossPrethrow,1,false)
	}
	
	if attack == 1 {
		sprite_index = spPreThrow2
	}
	
	
	if attack == 2 {
		sprite_index = spThrow
	}
		
	if attack == 0 {
	once = 0
	}
	
	  if attack == 2 and once == 0 {
	once = 1
	audio_play_sound(sndWoosh,1,false)
var dir = point_direction(x,y,objPlayer.x,objPlayer.y)
		for (var i = dir - 30 ;i < dir + 30;i += random_range(3,10)) {
				instance_create_layer(x,y,"EnemiesBullets",objBoss1bulletZ).direction = i
			}
		}
	
	
	if attack = 2 and image_index > image_number - 1 {
		state = statesBoss1.alert
		sprite_index = spIdle
	}
	
}