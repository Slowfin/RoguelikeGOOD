randomize()

draw_set_color(c_black)
draw_set_alpha(alpha)
draw_rectangle(0,0,2000,1000,false)
draw_set_alpha(1)

draw_set_font(fntPixel)

var camX = camera_get_view_x(view_camera[0])
var camY = camera_get_view_y(view_camera[0])


if objPlayer.curGun != noone {
draw_set_color(c_white)
draw_text_transformed(camX + 270 + choose(-shakeX,shakeX),camY + 150 + choose(-shakeY,shakeY), string(objPlayer.bullets)+"/"+string(objPlayer.maxBullets),1,1,0)
}

if keyboard_check(vk_alt) {
	mp_grid_draw(global.mp_grid)	
}


