

if outline == true {

gpu_set_fog(true,c_white,0,0)
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
draw_sprite_ext(sprite_index,image_index,x,y+fly,image_xscale,image_yscale,image_angle,c_white,image_alpha)

if shop and outline {
	draw_set_color(c_yellow)
	draw_text_transformed(x,y-20,cost,1,1,0)	
}