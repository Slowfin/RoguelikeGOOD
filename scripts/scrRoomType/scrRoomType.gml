// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrRoomType(){
	
randomize()

var midroomX = (genx+genx2 )/ 2 
var midroomY = (geny+geny2)/ 2 - 2


var roomType = irandom(1)

if mobRooms >= maxMobRooms {
				roomType = 1 
				}
if powerupRooms >= maxPowerupRooms {
				roomType = 0 
				}
		
if rooms < maxRooms -1 {
		if roomType == 0 {
			if mobRooms < maxMobRooms {
			mobRooms++
			with instance_create_layer(genx,geny,"RoomType",objMobRoom) {
				roomX = objRoomGenerator.roomx
				roomY = objRoomGenerator.roomy }
			}  
		}
		if roomType == 1 {
			if powerupRooms < maxPowerupRooms  {
			powerupRooms++
			with instance_create_layer(genx,geny,"RoomType",objPowerupRoom) {
				roomX = objRoomGenerator.roomx
				roomY = objRoomGenerator.roomy }
			}
		}
	}
		
		if rooms == maxRooms -1 and bossRoomExist == false  {
			//with instance_furthest(objSpawnRoom.x,objSpawnRoom.y,objRoomTypePar) {
			//	instance_destroy()
				with instance_create_layer(genx,geny,"RoomType",objBossRoom) {
					roomX = objRoomGenerator.roomx
					roomY = objRoomGenerator.roomy	
				}
				
			}
		
		if gen == false and powerupRooms < maxPowerupRooms {
			var inst = instance_find(objMobRoom, irandom(instance_number(objMobRoom) - 1))
			with inst {
				with instance_create_layer(x,y,"RoomType",objPowerupRoom) {
					roomX = objRoomGenerator.roomx
					roomY = objRoomGenerator.roomy
				instance_destroy()
				}
			}
			powerupRooms++
		}



}