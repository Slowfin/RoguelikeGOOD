randomize()

if place_meeting(x,y,objPlayer) and objPlayer.hurtTime <= 0 {
	objPlayer.HP -= 1
	global.shakePower = 2
	objCamera.alarm[0] = 5
	objPlayer.hurtTime = objPlayer.baseHurtTime
			if objPlayer.HP > 0 {
			audio_stop_sound(sndHitPlayer)	
			audio_play_sound(sndHitPlayer,10,false)	
		} else {
			audio_play_sound(sndScream,10,false)
		}
}

alarm[0] = 20
die = false
global.shakePower = 2
objCamera.alarm[0] = 5

sprite_index = choose(sprCrackSmall,sprCrackSmall2,sprCrackSmall3)