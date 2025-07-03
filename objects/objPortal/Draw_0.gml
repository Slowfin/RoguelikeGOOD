if outline == true {

gpu_set_fog(true,c_red,0,0)
draw_sprite_ext(sprite_index,image_index,x-1,y-1+fly,image_xscale,image_yscale,0,c_red,1)
draw_sprite_ext(sprite_index,image_index,x-1,y+1+fly,image_xscale,image_yscale,0,c_red,1)
draw_sprite_ext(sprite_index,image_index,x+1,y-1+fly,image_xscale,image_yscale,0,c_red,1)
draw_sprite_ext(sprite_index,image_index,x+1,y+1+fly,image_xscale,image_yscale,0,c_red,1)
draw_sprite_ext(sprite_index,image_index,x,y+1+fly,image_xscale,image_yscale,0,c_red,1)
draw_sprite_ext(sprite_index,image_index,x,y-1+fly,image_xscale,image_yscale,0,c_red,1)
draw_sprite_ext(sprite_index,image_index,x-1,y+fly,image_xscale,image_yscale,0,c_red,1)
draw_sprite_ext(sprite_index,image_index,x+1,y+fly,image_xscale,image_yscale,0,c_red,1)
}

gpu_set_fog(false,c_white,0,0)
draw_sprite_ext(sprite_index,image_index,x,y+fly,1,1,0,c_white,image_alpha)