// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrUpdateGrid(){

	var w = ceil(room_width / TS)
	var h = ceil(room_height / TS)

	global.mp_grid = mp_grid_create(0,0,w,h,TS,TS)

	mp_grid_add_instances(global.mp_grid,objWall,false)

}