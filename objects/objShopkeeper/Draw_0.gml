if outline {

gpu_set_fog(true,c_white,0,0)
draw_sprite_ext(sprShopkeeper,image_index,x-1,y-1,1,1,0,c_red,1)
draw_sprite_ext(sprShopkeeper,image_index,x-1,y+1,1,1,0,c_red,1)
draw_sprite_ext(sprShopkeeper,image_index,x+1,y-1,1,1,0,c_red,1)
draw_sprite_ext(sprShopkeeper,image_index,x+1,y+1,1,1,0,c_red,1)
}

gpu_set_fog(false,c_white,0,0)
draw_self()

