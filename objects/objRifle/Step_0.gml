maxBullets = ceil(ogBullets * objPlayer.moreAmmo)

if inInventory {
	outline = false
	shop = false
	
	if objPlayer.state = statesPlayer.dead or objPlayer.state = statesPlayer.teleport {
		isActive = false	
	} else if objPlayer.curGun = gun {
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

var mouseDir = point_direction(objPlayer.x,objPlayer.y,mouse_x,mouse_y)

if !reload {
image_angle = mouseDir
}


x = objPlayer.x + lengthdir_x(5 - shootKnockback,mouseDir)
y = objPlayer.y - 6 + lengthdir_y(5 - shootKnockback,mouseDir) 


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
shootCd = maxShootCd / objPlayer.shootSpeed
objCamera.alarm[0] = 5
global.shakePower = 0.5
with instance_create_layer(x + lengthdir_x(19,mouseDir),y + lengthdir_y(19,mouseDir),"Glow",objBulletParticle) { 
	image_angle = other.image_angle
	sprite_index = sprBulletParticle3
}
	with instance_create_layer(x + lengthdir_x(8,mouseDir),y + lengthdir_y(8,mouseDir),"Bullets",objPistolBullet) {
		gun = "rifle"
		randomize()
		var fireRandom = irandom_range(1,5)
		if objPlayer.fireChanse >= fireRandom {
			fire = true	
		} else {
			fire = false
		}
	}
bullets -= 1
shootKnockback = 2
audio_play_sound(sndGunshot2,1,false,1,0,random_range(0.9,1.1))
alarm[1] = 5
global.cantChange = 5
}

if shootCd > 0 {
	shootCd -= 1
}

var sound = reloadTime / objPlayer.reloadSpeed

if bullets < maxBullets and keyboard_check_pressed(ord("R")) and reload == false {
	reload = true
	alarm[0] = ceil(sound)
	audio_play_sound(sndReloadStart,1,false)
}

if alarm[0] == ceil(sound / 2) {
	audio_play_sound(sndReloadMiddle,1,false)
}

if alarm[0] == 15 {
	audio_play_sound(sndReloadEnd,1,false)
}

if reload = true {
	image_angle += 18
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

