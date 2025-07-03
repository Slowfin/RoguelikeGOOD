if place_meeting(x,y,objPlayer) {
	outline = true
} else {
	outline = false
}

if place_meeting(x,y,objPlayer) {
if (shop and objPlayer.money >= cost and keyboard_check_pressed(ord("E"))) 
or !shop {
	statPlus = true
	instance_destroy()	
	audio_play_sound(sndPickUp,1,false)
	if shop {
	objPlayer.money -= cost
	}
} }

numb += 0.09
fly+=sin(numb)*0.2

depth = -9999

if shop == false {
	mask_index = sprite_index
} else {
	mask_index = hitboxItemShop
}