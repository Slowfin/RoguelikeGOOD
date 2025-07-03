if  coinDrop > 0 {
	instance_create_layer(x+irandom_range(-16,16),y+irandom_range(-16,16),"TopNoUI",objCoin)
	coinDrop -= 1
	
	alarm[3] = 3
}
