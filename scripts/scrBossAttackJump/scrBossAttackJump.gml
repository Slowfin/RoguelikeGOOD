// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossAttackJump(){
	randomize()
	path_end()
	
	
	  if attack == 0 {
	sprite_index = spPreJump
		}
		
	if attack == 0 and image_index > image_number - 1 {
			jumpTime = 50
			jumpVsp = -5
			image_index = 0
			move_towards_point(objPlayer.x,objPlayer.y,1.2)
			audio_play_sound(sndBossJump,1,false)
	}
	
	if jumpTime > 0 {
		jumpVsp += jumpGrv
		y += jumpVsp
		attack = 1
	} else if attack != 0 {
		attack = 2	
		image_speed = 1
	}
	
	 if attack == 1 {
	sprite_index = spJump
	jumpTime -= 1
	canHurt = false
		}
		
	if attack == 0 {
	once = 0
	}
	  if attack == 2 and once == 0 {
		  canHurt = true
	sprite_index = spEndJump
	speed = 0
	image_speed = 1
	jumpVsp = 0
	image_index = 0
	audio_play_sound(sndBossFall,1,false)
	once = 1
		for (var i = 0;i < 360;i += random_range(15,30)) {
				instance_create_layer(x,y,"Enemies",objBoss1bullet).direction = i
			}
		instance_create_layer(x,y-8,"Bullets",objCrack)
		}
	
	if attack == 1 and image_index > image_number - 1 {
		image_speed = 0	
	} else {
		image_speed = 1
	}
	
	
	if sprite_index == spEndJump and image_index > image_number - 1 {
		state = statesBoss1.alert
		sprite_index = spIdle
	}
	
}