randomize()



switch (state)
{
	case statesBoss1.idle: scrBossIdle() break
	case statesBoss1.alert: scrBossAlert() break
	case statesBoss1.attack1: scrBossAttackJump() break
	case statesBoss1.attack2: scrBossAttackThrow() break
	case statesBoss1.died: scrBossDied() break
}

if state != statesBoss1.died {
	scrBossNotDead()	
}

if place_meeting(x,y,objWall) {
	var dir = point_direction(x,y,objPlayer.x,objPlayer.y)
	x += lengthdir_x(1,dir)	
	y += lengthdir_y(1,dir)	
}

if up == false {
spIdle = sprBoss
spEndJump = sprBossEndjump
spJump = sprBossJump
spPreJump = sprBossPrejump
spPreThrow = sprBossPrethrow
spPreThrow2 = sprBossPrethrow2
spRun = sprBossRun
spThrow = sprBossThrow
}
// else {
//spIdle = sprBossUp
//spEndJump = sprBossEndjumpUp
//spJump = sprBossJumpUp
//spPreJump = sprBossPrejumpUp
//spPreThrow = sprBossPrethrowUp
//spPreThrow2 = sprBossPrethrow2Up
//spRun = sprBossRunUp
//spThrow = sprBossThrowUp
//}