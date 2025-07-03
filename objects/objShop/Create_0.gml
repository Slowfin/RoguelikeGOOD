randomize()
shopkeeper = instance_create_layer(x-28,y+1,layer,objShopkeeper)

scrRandomItem()
instance_create_layer(x+11,y-8,"TopNoUi",randomItem).shop = true

randomItem1 = randomItem

scrRandomItem() 
while randomItem == randomItem1 {
	scrRandomItem() 
}
instance_create_layer(x+30,y-8,"TopNoUi",randomItem).shop = true

randomItem2 = randomItem

scrRandomItem() 
while randomItem == randomItem1 or randomItem == randomItem2 {
	scrRandomItem() 
}
instance_create_layer(x+49,y-8,"TopNoUi",randomItem).shop = true

randomItem3 = randomItem