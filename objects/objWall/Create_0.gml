var background = layer_background_get_id(layer_get_id("Background"))

if global.area == "grey" {
	sprite_index = sprWall	
	layer_background_sprite(background,sprFloor)
	
}
if global.area == "green" {
	sprite_index = sprWallGreen
	layer_background_sprite(background,sprFloorGreen)
}
if global.area == "desert" {
	sprite_index = sprWallDesert
	layer_background_sprite(background,sprFloorDesert)
}

