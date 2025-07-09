if global.fight = true and instance_number(objEnemyPar) == 1 {
	global.fight = false	
}

for (var i = 0; i < coinDrop; i+=1) {
	instance_create_layer(x+irandom_range(-8,8),y+irandom_range(-8,8),"TopNoUI",objCoin)
}

if objPlayer.HP < objPlayer.MaxHP {
var dropHeart = irandom_range(1,8)  
} else {
var dropHeart = irandom(0) 
}     

if dropHeart >= 8 {
	instance_create_layer(x+irandom_range(-8,8),y+irandom_range(-8,8),"Player",objHeart)	
}