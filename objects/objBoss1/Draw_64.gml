draw_set_font(fntPixel)

var bar_length = camera_get_view_width(view_camera[0]) *  2
var bar_height = 10
var bar_x = camera_get_view_width(view_camera[0])
var bar_y = 50
var bar_outline = 5

var health_percent = HP / MaxHP 

var curBar_length = bar_length * health_percent

draw_set_color(c_black)
draw_rectangle(bar_x-bar_outline,bar_y-bar_outline,bar_x+bar_length+bar_outline,bar_y+bar_height+bar_outline, false)


whiteX = lerp(whiteX,bar_x+curBar_length,0.1)
draw_set_color(c_white)
draw_rectangle(whiteX,bar_y,bar_x+curBar_length,bar_y+bar_height, false)

draw_set_color(c_orange)
draw_rectangle(bar_x,bar_y,bar_x+curBar_length,bar_y+bar_height, false)

