// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossAlert(){
	
	randomize()
	if objPlayer.state = statesPlayer.dead {
		state = statesBoss1.idle
	}
	
	attackTimer = irandom_range(90,180)
	
	if alert and distance_to_object(objPlayer) > attackDis  {
	if pathTimer-- <= 0 {
		pathTimer = pathDelay
	var foundPlayer = mp_grid_path(global.mp_grid,path,x,y,objPlayer.x,objPlayer.y,choose(0,1))

	if foundPlayer {
		path_start(path,sp,path_action_stop,false)	
		sprite_index = spRun
		}
	}
} else {
		if distance_to_object(objPlayer) <= attackDis and !collision_line(x,y,objPlayer.x,objPlayer.y,objWall,false,true) {
		sprite_index = spIdle
		attack = 0
		path_end()	
	}
}

	attackDelay -= 1
	
	if !collision_line(x,y,objPlayer.x,objPlayer.y,objWall,false,true) and attackDelay <= 0 {
		attackDelay = attackTimer	
		attack = 0
		state = choose(statesBoss1.attack1,statesBoss1.attack2)
		image_index = 0
	} else if collision_line(x,y,objPlayer.x,objPlayer.y,objWall,false,true) and attackDelay <= 0 {
		attackDelay = 10	
	}

}