roomX = 200
roomY = 100

if place_meeting(x,y,objMobRoom) or place_meeting(x,y,objSpawnRoom) or place_meeting(x,y,objPowerupRoom) or place_meeting(x,y,objBossRoom)  {
	   	instance_destroy()
		objRoomGenerator.mobRooms -= 1
} 


oneTime = 0

randomEnemies = random_range(2,6)

mobsPattern = irandom(2)
