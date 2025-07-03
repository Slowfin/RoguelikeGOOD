draw_self()
draw_set_font(fntPixel)

if white {
	draw_set_color(c_white)
} else if  onFire > 0 {
	draw_set_color(c_yellow)
}  else {
	draw_set_color(c_red)
}

if !damageGot == 0 and global.showDamage {
draw_text_transformed(statX -8,statY-yoffset,damageGot,1,1,0)
if onFire {
	draw_sprite(sprFireEffect,-1,statX-12,statY-yoffset+5)
}
}

if keyboard_check(ord("V")) {
	draw_path(path,x,y,0)
}