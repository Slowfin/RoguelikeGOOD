// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrMadIdle(){
	
	path_end()	

	scrMadNotDead()
	
	sprite_index = sprMadEnemy
	
	if distance_to_object(objPlayer) <= alertDis and objPlayer.state != statesPlayer.dead {
	alert = true
	state = statesMad.alert
}  else {
	alert = false	
}

}