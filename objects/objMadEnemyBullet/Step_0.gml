if place_meeting(x,y,objWall) {
	instance_destroy()	
}

if place_meeting(x,y,objPlayer) and objPlayer.hurtTime <= 0 {
	objPlayer.HP -= 1
	instance_destroy()
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