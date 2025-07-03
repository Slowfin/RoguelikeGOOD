maxRooms = 8
rooms = 0
maxMobRooms = irandom_range(5,7)
mobRooms = 0
maxPowerupRooms = maxRooms - maxMobRooms 
powerupRooms = 0
bossRoomExist = false

roomx = 320
roomy = 176
//roomx = 352
//roomy = 208

genx = 1120
geny = 640
genx2 = genx + roomx
geny2 = geny + roomy
gen = true


up = false
down = false
right = false
left = false 

scrCreateRoom()
instance_create_layer(genx,geny,"RoomType",objSpawnRoom)

