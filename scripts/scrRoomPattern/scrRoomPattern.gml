// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrRoomPattern(){


	randomize()

var midroomX = (genx+genx2 )/ 2 
var midroomY = (geny+geny2)/ 2

if rooms >= maxRooms {
			gen = false
		}
		
if gen == true {
		var ranroom = irandom(3)

		if ranroom == 0 and up == false and !position_meeting(genx,geny-roomy-16,objRoomLimit) {
			up = false
			down = true
			right = false
			left = false			
			instance_create_layer(midroomX,geny,"Doors",objDoorVert)
			geny -= roomy - 16
			geny2 -= roomy - 16
			scrCreateRoom()
			scrRoomType()
			rooms++
		}
		if ranroom == 1 and down == false and !position_meeting(genx,geny2+roomy-16,objRoomLimit) {
			up = true
			down = false
			right = false
			left = false			
			instance_create_layer(midroomX,geny2-16,"Doors",objDoorVert)
			geny += roomy - 16
			geny2 += roomy - 16
			scrCreateRoom()
			scrRoomType()
			rooms++
		}
		if ranroom == 2 and right == false and !position_meeting(genx2+roomx-16,geny,objRoomLimit) {
			up = false
			down = false
			right = false
			left = true			
			instance_create_layer(genx2-16,midroomY,"Doors",objDoorHor)
			genx += roomx - 16
			genx2 += roomx - 16
			scrCreateRoom()
			scrRoomType()
			rooms++
		}
		if ranroom == 3 and left == false and !position_meeting(genx-roomx-16,geny,objRoomLimit) {
			up = false
			down = false
			right = true
			left = false		
			instance_create_layer(genx,midroomY,"Doors",objDoorHor)
			genx -= roomx - 16
			genx2 -= roomx - 16
			scrCreateRoom()
			scrRoomType()
			rooms++
		}
		
}

}