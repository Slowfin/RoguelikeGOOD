if keyboard_check_pressed(vk_f1) {
	with objWall {
	instance_destroy()	
	}
	with objDoorHor {
	instance_destroy()	
	}
	with objDoorVert {
	instance_destroy()	
	}
	with objEnemyPar {
	instance_destroy()	
	}
	with objDummy {
	instance_destroy()	
	}
	with objBossRoom {
	instance_destroy()	
	}
	with objPowerupRoom {
	instance_destroy()	
	}
	with objMobRoom {
	instance_destroy()	
	}
	with objPortal {
	instance_destroy()	
	}
	with objWeaponPar if inInventory = false {
	instance_destroy()
	}
	
	global.bossDefeated = false
	global.area = choose("green","grey","desert")
	maxMobRooms = irandom_range(4,6)
	maxPowerupRooms = maxRooms - maxMobRooms 
	rooms = 0
	mobRooms = 0
	powerupRooms = 0
	bossRoomExist = false
	genx = 1120
	geny = 640
	genx2 = genx + roomx
	geny2 = geny + roomy
	gen = true
	scrCreateRoom()
	objGame.alarm[2] = 20
}



scrRoomPattern()

