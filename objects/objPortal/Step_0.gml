numb += 0.09
fly+=sin(numb)*0.2

if place_meeting(x,y,objPlayer) and objPlayer.state != statesPlayer.teleport {
	outline = true
} else {
	outline = false	
}

if outline == true and keyboard_check_pressed(ord("E")) and objPlayer.state != statesPlayer.teleport {
	objPlayer.state = statesPlayer.teleport
	audio_play_sound(sndTeleport1,1,false)
	appear = false
}

if sprite_index == sprPortralClose and image_index >= 2 and image_alpha > 0 and !audio_is_playing(sndTeleport2) {
	audio_stop_sound(sndTeleport1)
	audio_play_sound(sndTeleport2,1,false)	
}

if sprite_index == sprPortralClose and image_index >= image_number -1 and image_alpha > 0 {	
	image_alpha = 0
	objRoomGenerator.alarm[0] = 120
}

if appear {
	image_alpha += 0.03
}  if  image_alpha >= 1  {
	appear = false
}