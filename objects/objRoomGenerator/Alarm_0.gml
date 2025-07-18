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
	
	objGame.alpha = 1
	global.bossDefeated = false
	global.music = "Area"
	var oldArea = global.area
	while global.area == oldArea {
		global.area = choose("green","grey","desert")
	}
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
	
	if objPlayer.state == statesPlayer.teleport {
	objPlayer.x = 1280
	objPlayer.y = 728
	objPlayer.state = statesPlayer.alive
	objPlayer.image_xscale = 1
	objPlayer.image_yscale = 1
	objPlayer.image_angle = 0
	global.floor += 1
	objPlayer.rotateTp = -5
	objCamera.x = 1120
	objCamera.y = 638
	objCamera.factor = 0
	objCamera.alarm[1] = 5
	
	camera_set_view_pos(view_camera[0],1120,635)
	audio_stop_sound(musArea)
	}
