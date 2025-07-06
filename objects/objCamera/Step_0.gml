

camera_set_view_pos(view_camera[0],x+choose(global.shakePower,-global.shakePower),y+choose(global.shakePower,-global.shakePower))
camera_set_view_size(view_camera[0],320/camZoom,180/camZoom)

if !followPlayer and factor != 0 {
factor = 0.08
x += (camX - x) * factor
y += (camY - y-2) * factor
} 

if followPlayer {
factor = 0.08
x += ((objPlayer.x - x) - (320/camZoom) / 2) * factor
y += ((objPlayer.y - y) - (180/camZoom) / 1.8) * factor
	if x < 0 {
	x = 0	
	}
}



if keyboard_check_pressed(ord("O")) and camZoom > 0.25 {
	camZoom -= 0.25
}
if keyboard_check_pressed(ord("P")) and camZoom < 2 {
	camZoom += 0.25
}
