// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrPlayerDead(){

	sprite_index = sprPlayerDead
	hsp = 0
	if deadTimer == 0 {
		vsp = - 3
		image_alpha = 1
	}
	if exploded == false {
	vsp += 0.1
	y += vsp
	}
	
	deadTimer += 1
	image_angle += 5
	
	if deadTimer > 60 and exploded == false {
		audio_play_sound(sndMemeExplosion,1,false)
		audio_stop_sound(sndScream)
		instance_create_layer(x,y,"TopNoUI",objExplosion)
		image_alpha = 0
		grv = 0
		vsp = 0
		exploded = true
		instance_create_layer(x,y,"Game",objPressSpace)
	}
	
	if exploded and keyboard_check_pressed(vk_space)  {  
		game_restart()	

		if instance_exists( objPressSpace) {
		with objPressSpace  {
			instance_destroy()	
		} }
	}
}