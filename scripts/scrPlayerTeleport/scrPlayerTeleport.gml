// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrPlayerTeleport(){

sprite_index = sprPlayerDead
rotateTp += 0.15
image_angle += rotateTp

var dir = point_direction(x,y,objPortal.x,objPortal.y)


x += lengthdir_x(rotateTp/10,dir)
y += lengthdir_y(rotateTp/10,dir)

if image_xscale > 0 {
image_xscale -= rotateTp / 300
image_yscale -= rotateTp / 300
}

if image_xscale <= 0  {
		if objPortal.sprite_index != sprPortralClose {
	objPortal.sprite_index = sprPortralClose
	objPortal.image_index = 0
	image_alpha = 0
		}
}


	
}