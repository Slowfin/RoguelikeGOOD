draw_set_font(fntPixel)

var bar_length = 100
var bar_height = 30
var bar_x = 50
var bar_y = 50
var bar_outline = 5

var health_percent = objPlayer.HP / objPlayer.MaxHP 

var curBar_length = bar_length * health_percent

draw_set_color(c_black)
draw_rectangle(bar_x-bar_outline,bar_y-bar_outline,bar_x+bar_length+bar_outline,bar_y+bar_height+bar_outline, false)
                 
whiteX = lerp(whiteX,bar_x+curBar_length,0.1)
draw_set_color(c_white)
draw_rectangle(whiteX,bar_y,bar_x+curBar_length,bar_y+bar_height, false)


draw_set_color(c_red)
draw_rectangle(bar_x,bar_y,bar_x+curBar_length,bar_y+bar_height, false)

draw_set_color(c_black)
draw_text_transformed(bar_length + bar_x + 23 , bar_height + bar_y-40,objPlayer.HP,3,3,0)
draw_text_transformed(bar_length + bar_x + 23 , bar_height + bar_y-34,objPlayer.HP,3,3,0)
draw_text_transformed(bar_length + bar_x + 17 , bar_height + bar_y-40,objPlayer.HP,3,3,0)
draw_text_transformed(bar_length + bar_x + 17 , bar_height + bar_y-34,objPlayer.HP,3,3,0)

draw_set_color(c_red)
draw_text_transformed(bar_length + bar_x + 20 , bar_height + bar_y-37,objPlayer.HP,3,3,0)

draw_set_color(c_yellow)
draw_text_transformed(bar_length,bar_height+70,objPlayer.money,3,3,0)
