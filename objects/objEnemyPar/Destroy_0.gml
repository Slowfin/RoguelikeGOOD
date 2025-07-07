if global.fight = true and instance_number(objEnemyPar) == 1 {
	global.fight = false	
}

for (var i = 0; i < coinDrop; i+=1) {
	instance_create_layer(x+irandom_range(-8,8),y+irandom_range(-8,8),"TopNoUI",objCoin)
}
