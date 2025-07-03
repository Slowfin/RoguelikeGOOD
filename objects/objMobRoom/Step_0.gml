if place_meeting(x,y,objPlayer) and global.fight == false and oneTime == 0 and objPlayer.state != statesPlayer.dead {
	
	if mobsPattern == 0 {
			instance_create_layer(x+110,y+roomY/2,"Enemies",objEnemy)
			instance_create_layer(x+200,y+roomY/2,"Enemies",objEnemy)
			instance_create_layer(x+155,y+roomY/2-20,"Enemies",objEnemy)
			instance_create_layer(x+155,y+roomY/2+20,"Enemies",objEnemy)		
	}
	if mobsPattern == 1 {
			instance_create_layer(x+110,y+roomY/2,"Enemies",objMadEnemy)
			instance_create_layer(x+200,y+roomY/2,"Enemies",objMadEnemy)
			
			instance_create_layer(x+320/2,y+180/2-10,"Enemies",objWall)
			instance_create_layer(x+320/2-16,y+180/2-10,"Enemies",objWall)
			instance_create_layer(x+320/2-16,y+180/2-16-10,"Enemies",objWall)
			instance_create_layer(x+320/2,y+180/2-16-10,"Enemies",objWall)
	}
	if mobsPattern == 2 {
			instance_create_layer(x+100,y+roomY/2,"Enemies",objEnemy)
			instance_create_layer(x+210,y+roomY/2,"Enemies",objEnemy)
			instance_create_layer(x+155,y+roomY/2,"Enemies",objMadEnemy)
			
			instance_create_layer(x+48,y+48,"Enemies",objWall)
			instance_create_layer(x+320-64,y+176-64,"Enemies",objWall)
	}
	
	global.fight = true
	oneTime = 1
	scrUpdateGrid()
}


if place_meeting(x,y,objPlayer) and objPlayer.state != statesPlayer.dead  {
	objCamera.camX = x
	objCamera.camY = y
}	

if place_meeting(x,y,objPlayer)  {
	if global.bossDefeated == false {
	global.music = "Area"	 
	}
	if global.bossDefeated == true {
	global.music = noone
	}
}