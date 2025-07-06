maxBullets = ceil(ogBullets * objPlayer.moreAmmo)

mouseDir = point_direction(objPlayer.x,objPlayer.y,mouse_x,mouse_y)

//для хотдога
if object_index == objHotdog {
if !reload {
if instance_exists(objBulletHotdog) or bullets <= 0 {
	image_index = 1	
} else {
	image_index = 0	
} }  }

if reload = true {
	//image_angle += 18
	sprite_index = spriteReload
} else {
	sprite_index = sprite
}

if inInventory {
	outline = false
	shop = false
	
	if objPlayer.state = statesPlayer.dead or objPlayer.state = statesPlayer.teleport {
		isActive = false	
	} else if objPlayer.curSlot = gun {
		isActive = true	
	}
	


if objPlayer.firstSlot != gun and objPlayer.secondSlot != gun {
	inInventory = false	
	image_alpha = 1
	image_angle = 0
	x = objPlayer.x
		y = objPlayer.y
}


if isActive == true {
	fly = 0


image_angle = mouseDir


x = objPlayer.x + lengthdir_x(offset - shootKnockback,mouseDir)
y = objPlayer.y - 6 + lengthdir_y(offset - shootKnockback,mouseDir) 


if mouse_x > objPlayer.x { 	
	image_yscale = 1
}  else {	
	image_yscale = -1	
}

if mouse_y > objPlayer.y {
	depth = objPlayer.depth - 5
} else {
	depth = objPlayer.depth + 5
}

if bullets <= 0 and mouse_check_button_pressed(mb_left) and !reload {
	audio_play_sound(sndNoAmmo,1,false)
	objGame.shakeX = 1
	objGame.shakeY = 1
	objGame.alarm[1] = 3
}

if bullets > 0 and mouse_check_button(mb_left) and shootCd <= 0 and !reload {
if object_index == objPistol {
	scrGunShoot()
} else if object_index == objRifle {
	scrRifleShoot()
} else if object_index == objShotgun {
	scrShotgunShoot()
} else if object_index == objHotdog {
	scrHotdogShoot()
}
}

if shootCd > 0 {
	shootCd -= 1
}

var sound = reloadTime / objPlayer.reloadSpeed

if bullets < maxBullets and keyboard_check_pressed(ord("R")) and reload == false {
	reload = true
	image_index = 0
	sprite_index = spriteReload
	alarm[0] = ceil(sound)
	alarm[2] = ceil((reloadTime / objPlayer.reloadSpeed) / image_number -1)
	audio_play_sound(soundReloadStart,1,false,1,relStartOffset)
}

if alarm[0] == ceil(sound / 2) {
	audio_play_sound(soundReloadMiddle,1,false,1,relMiddleOffset)
}

if alarm[0] == 15 {
	audio_play_sound(soundReloadEnd,1,false,1,relEndOffset)
}

}

if isActive = false {
	image_alpha = 0
} else {
	image_alpha = 1	
}

if objPlayer.curGun = gun {
	isActive = true	
	objPlayer.bullets = bullets
	objPlayer.maxBullets = maxBullets
} else {
	isActive = false
}

if objPlayer.curGun != gun {
	reload = false
}

}

if !inInventory {
	image_alpha = 1
	image_yscale = 1
	image_angle = 0
	numb += 0.09
fly+=sin(numb)*0.2
depth = -9999

	if place_meeting(x,y,objPlayer) {
	outline = true
} else {
	outline = false
}



if shop == false {
	mask_index = sprite_index
} else {
	mask_index = hitboxItemShop
}
}