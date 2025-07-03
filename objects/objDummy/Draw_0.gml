draw_self()
draw_set_font(fntPixel)

if white {
	draw_set_color(c_white)
} else {
	draw_set_color(c_red)
}

if !damageGot == 0 {
draw_text_transformed(statX -8,statY-yoffset,damageGot,1,1,0)
}