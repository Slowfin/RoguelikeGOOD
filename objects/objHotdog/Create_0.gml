gun = "hotdog"

ogBullets = 5
maxBullets = ceil(ogBullets * objPlayer.moreAmmo)
bullets = maxBullets
shootCd = 0
maxShootCd = 60
reload = false
damage = 16
reloadTime = 140

mouseDir = point_direction(objPlayer.x,objPlayer.y,mouse_x,mouse_y)

isActive = false
shootKnockback = 0
inInventory = false
numb = random_range(0,10)
shop = false
outline = false
cost = 40 + irandom_range(-3,3)
fly = 0

shoot = false

offset = 5
particleOffset = 14
bulletOffset = 8
sprite = sprHotdog
spriteShoot = sprHotdog
spriteReload = sprHotdogReload
spriteParticle = sprBulletParticle4
soundReloadStart = sndWoosh4
soundReloadMiddle = sndKetchup
soundReloadEnd = sndReloadEnd
relStartOffset = 0
relMiddleOffset = 0
relEndOffset = 0

fire = false

//maxBullets = ceil(ogBullets * objPlayer.moreAmmo)

//if !reload {
//if instance_exists(objBulletHotdog) or bullets <= 0 {
//	image_index = 1	
//} else {
//	image_index = 0	
//} }

//if reload = true {
//	//image_angle += 18
//	sprite_index = sprHotdogReload
//} else {
//	sprite_index = sprHotdog
//}

//if inInventory {
//	outline = false
//	shop = false
	
//	if objPlayer.state = statesPlayer.dead or objPlayer.state = statesPlayer.teleport {
//		isActive = false	
//	} else if objPlayer.curGun = gun {
//		isActive = true	
//	}

//if objPlayer.firstSlot != gun and objPlayer.secondSlot != gun {
//	inInventory = false	
//	image_alpha = 1
//	image_angle = 0
//	x = objPlayer.x
//		y = objPlayer.y
//}

//if isActive == true {
//	fly = 0

//var mouseDir = point_direction(objPlayer.x,objPlayer.y,mouse_x,mouse_y)

////if !reload {
//image_angle = mouseDir
////}


//x = objPlayer.x + lengthdir_x(5 - shootKnockback,mouseDir)
//y = objPlayer.y - 6 + lengthdir_y(5 - shootKnockback,mouseDir) 


//if mouse_x > objPlayer.x { 	
//	image_yscale = 1
//}  else {	
//	image_yscale = -1	
//}

//if mouse_y > objPlayer.y {
//	depth = objPlayer.depth - 5
//} else {
//	depth = objPlayer.depth + 5
//}

//if bullets <= 0 and mouse_check_button_pressed(mb_left) and !reload {
//	audio_play_sound(sndNoAmmo,1,false)
//	objGame.shakeX = 1
//	objGame.shakeY = 1
//	objGame.alarm[1] = 3
//}

//if bullets > 0 and mouse_check_button(mb_left) and shootCd <= 0 and !reload {
//shootCd = maxShootCd / objPlayer.shootSpeed
//objCamera.alarm[0] = 5
//global.shakePower = 0.25
//with instance_create_layer(x + lengthdir_x(14,mouseDir),y + lengthdir_y(14,mouseDir),"Glow",objBulletParticle) { 
//	image_angle = other.image_angle
//	sprite_index = sprBulletParticle4
//}
//	with instance_create_layer(x + lengthdir_x(8,mouseDir),y + lengthdir_y(8,mouseDir),"Player",objBulletHotdog) {
//		gun = "hotdog"
//		randomize()
//		var fireRandom = irandom_range(1,5)
//		if objPlayer.fireChanse >= fireRandom {
//			fire = true	
//		} else {
//			fire = false
//		}
//	}
//bullets -= 1
//shootKnockback = 2
//audio_play_sound(sndWoosh2,1,false,1,0,random_range(0.9,1.1))
//alarm[1] = 10
//global.cantChange = 5
//}

//if shootCd > 0 {
//	shootCd -= 1
//}

//var sound = reloadTime / objPlayer.reloadSpeed

//if bullets < maxBullets and keyboard_check_pressed(ord("R")) and reload == false {
//	reload = true
//	image_index = 0
//	sprite_index = sprHotdogReload
//	alarm[0] = ceil(sound)
//	alarm[2] = ceil(reloadTime / image_number -1)
//	audio_play_sound(sndReloadStart,1,false)
//}

//if alarm[0] == ceil(sound / 2) {
//	audio_play_sound(sndReloadMiddle,1,false)
//}

//if alarm[0] == 15 {
//	audio_play_sound(sndReloadEnd,1,false)
//}

////if reload = true {
////	image_angle += 18
////}



//}

//if isActive = false {
//	image_alpha = 0
//} else {
//	image_alpha = 1	
//}

//if objPlayer.curGun = gun {
//	isActive = true	
//	objPlayer.bullets = bullets
//	objPlayer.maxBullets = maxBullets
//} else {
//	isActive = false
//}

//if objPlayer.curGun != gun {
//	reload = false
//}

//}

//if !inInventory {
//	image_alpha = 1
//	image_yscale = 1
//	image_angle = 0
//	numb += 0.09
//fly+=sin(numb)*0.2
//depth = -9999

//	if place_meeting(x,y,objPlayer) {
//	outline = true
//} else {
//	outline = false
//}



//if shop == false {
//	mask_index = sprite_index
//} else {
//	mask_index = hitboxItemShop
//}
//}