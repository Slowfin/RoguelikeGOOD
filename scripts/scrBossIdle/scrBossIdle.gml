// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossIdle(){
	
	path_end()	
	
	sprite_index = spIdle
	
	if distance_to_object(objPlayer) <= alertDis and objPlayer.state != statesPlayer.dead {
	alert = true
	state = statesBoss1.alert
}  else {
	alert = false	
}

}