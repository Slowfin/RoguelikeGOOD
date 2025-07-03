depth = -bbox_bottom

image_angle += jumpHeight

//if place_meeting(x,y,objWall) {
//	instance_destroy()	
//}

if place_meeting(x,y,objPlayer) and objPlayer.hurtTime <= 0 and canHurt {
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

if z > 0 {
zspd -= grv	
} else {
zspd = 0
}

if z <= 0 {
	instance_destroy()
	instance_create_layer(x,y,"Bullets",objCrackSmall)
	audio_stop_sound(sndStoneBoom)
	audio_play_sound(sndStoneBoom,1,false,1,0,random_range(0.95,1.05))
}

if shadowSize > 0 {
shadowSize -= zspd / 100
}
if shadowSize <= 0 {
shadowSize += 0.01	
}
z += zspd