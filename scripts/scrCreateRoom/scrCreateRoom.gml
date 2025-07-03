// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrCreateRoom(){
	
// спавн стен сверху
for (var i = genx; i < genx2; i += 16 ) {
	instance_create_layer(i,geny,"Wall",objWall)	
}

// спавн стен снизу
for (var i = genx; i < genx2; i += 16 ) {
	instance_create_layer(i,geny2 - 16,"Wall",objWall)	
}

// спавн стен слева
for (var i = geny; i < geny2-16; i += 16 ) {
	instance_create_layer(genx,i,"Wall",objWall)	
}

// спавн стен слева
for (var i = geny; i < geny2-16; i += 16 ) {
	instance_create_layer(genx2 - 16,i,"Wall",objWall)	
}



}