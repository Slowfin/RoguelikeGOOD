var bossx = x+160
var bossy = y+90

if place_meeting(x,y,objPlayer)  and objPlayer.state != statesPlayer.dead  {
	objCamera.camX = x
	objCamera.camY = y
		if oneTime == 0 {
			global.fight = true
			oneTime  = 1	
			instance_create_layer(bossx,bossy,"Enemies",objBoss1)
		}
}	

if place_meeting(x,y,objPlayer) and global.bossDefeated == false and global.music != "Boss" {
	global.music = "Boss"
}

if global.bossDefeated and !instance_exists(objPortal) {
		instance_create_layer(bossx,bossy,"Glow",objPortal)
}


with objMobRoom if place_meeting(x,y,objBossRoom) {
		instance_destroy()
		}
		
		with objPowerupRoom if place_meeting(x,y,objBossRoom) {
		instance_destroy()
		}
		
		with objBossRoom if place_meeting(x,y,objBossRoom) {
		instance_destroy()
		}

