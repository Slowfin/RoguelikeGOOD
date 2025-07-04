// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrPlayerAlive(){


key_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"))
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"))
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"))
key_equip = keyboard_check_pressed(ord("E"))


if canMove {
hsp = (key_right - key_left) * sp
vsp = (key_down - key_up) * sp
}

if vsp != 0 and hsp != 0 {
	sp = (basicSp + speedMultip)  * 0.71	
} else {
	sp = basicSp + speedMultip 
}


// спрайт при ходьбе
if vsp == 0 {
if hsp > 0 { face = RIGHT }
if hsp < 0 { face = LEFT } }

if hsp > 0 and face == LEFT { face = RIGHT }
if hsp < 0 and face == RIGHT { face = LEFT }

if hsp == 0 {
if vsp < 0 { face = UP }
if vsp > 0 { face = DOWN } }

if vsp > 0 and face == UP { face = DOWN }
if vsp < 0 and face == DOWN { face = UP }

sprite_index = sprite[face]


// коллизия
if wallhack = false {
if place_meeting(x+hsp,y,objWall) {
	while !place_meeting(x+sign(hsp),y,objWall)	 {
		x += sign(hsp)	
	}
	hsp = 0
} }
x += hsp

if wallhack = false {
if place_meeting(x,y+vsp,objWall) {
	while !place_meeting(x,y+sign(vsp),objWall)	 {
		y += sign(vsp)	
	}
	vsp = 0
} }
y += vsp


mask_index = sprPlayerIdleDown



// анимация стойки
if hsp == 0 and vsp == 0 {
if face == RIGHT { sprite_index = sprPlayerIdleRight }	
if face == LEFT { sprite_index = sprPlayerIdleLeft }	
if face == UP { sprite_index = sprPlayerIdleUp }	
if face == DOWN { sprite_index = sprPlayerIdleDown }	
}


// depth
depth = -bbox_bottom

	if hurtTime-- > 0 {
		image_alpha = 0.5	
	} else  {
		image_alpha = 1
	}
	
	if HP <= 0 or keyboard_check_pressed(ord("M")) {
		state = statesPlayer.dead	
		instance_create_layer(x,y,"Game",objPressSpace)
	}


if curSlot = 1 {
curGun = firstSlot	
}
if curSlot = 2 {
curGun = secondSlot	
}
if curSlot = 3 {
curGun = thirdSlot	
}


if global.cantChange-- <= 0 {
 if curSlot != 2 and keyboard_check_pressed(ord("2")) and secondSlot != noone {
	 curSlot = 2
 }
  if curSlot != 1 and keyboard_check_pressed(ord("1")) and firstSlot != noone{
	 curSlot = 1
 }
 
 
if curSlot == 2 and secondSlot == noone {
	curSlot = 1
}
}
 
 // переход в гориз комнаты
if place_meeting(x+hsp,y,objDoorHor) and global.fight == false {
		if hsp < 0 {
x = other.x - 32	
		}
		if hsp > 0 {
x = other.x + 32	
		}
y = other.y
}

// переход в верт комнаты
if place_meeting(x,y+vsp,objDoorVert) and global.fight == false {
		if vsp < 0 {
y = other.y - 32	
		}
		if vsp > 0 {
y = other.y + 32	
		}
y = other.y
}


var n = noone
var d, t
with objWeaponPar {
	if inInventory == false {
		t = point_distance(objPlayer.x,objPlayer.y,x,y)
		if n = noone or t < d {
			d = t
			n = id
		}
	}
}
var targetGun = n

if place_meeting(x,y,targetGun) and key_equip {
	with targetGun if !inInventory and !shop {
		var actGun = self.gun
		if objPlayer.secondSlot != actGun and objPlayer.firstSlot != actGun {
		objPlayer.secondSlot = actGun
		inInventory = true
		x = objPlayer.x
		y = objPlayer.y
		audio_play_sound(sndPickUp,1,false)
		}
	} 
	with targetGun if !inInventory and shop and objPlayer.money >= cost {
		var actGun = self.gun
		if objPlayer.secondSlot != actGun and objPlayer.firstSlot != actGun {
		objPlayer.secondSlot = actGun
		inInventory = true
		x = objPlayer.x
		y = objPlayer.y
		audio_play_sound(sndPickUp,1,false)
		objPlayer.money -= cost
		}
	}
}

if keyboard_check_pressed(vk_control) {
	wallhack = !wallhack
} 







}