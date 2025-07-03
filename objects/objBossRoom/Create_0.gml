roomX = 200
roomY = 100

oneTime = 0

	   	with objMobRoom if place_meeting(x,y,objBossRoom) {
		instance_destroy()
		}
		
		with objPowerupRoom if place_meeting(x,y,objBossRoom) {
		instance_destroy()
		}
		
		with objBossRoom if place_meeting(x,y,objBossRoom) {
		instance_destroy()
		}

if place_meeting(x,y,objSpawnRoom) {
x = instance_furthest(x,y,objMobRoom).x
y = instance_furthest(x,y,objMobRoom).y
}

