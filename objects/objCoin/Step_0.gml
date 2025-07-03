numb += 0.09
y+=sin(numb)*0.2

if distance_to_object(objPlayer) < 50 {
	follow = true
	
}
	if follow == true {
		x = lerp(x,objPlayer.x,0.1)
		y = lerp(y,objPlayer.y,0.1)
	}
	
	if place_meeting(x,y,objPlayer) {
		instance_destroy()	
		objPlayer.money += 1
		audio_play_sound(sndCoin,1,false,1,0,random_range(0.95,1.05))
	}
	
image_xscale = lerp(image_xscale  ,1,0.2)
image_yscale = lerp(image_yscale  ,1,0.2)