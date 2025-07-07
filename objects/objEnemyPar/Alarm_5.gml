if onFire > 0 {
damageGot += global.fireDamage
HP -= global.fireDamage
alarm[5] = 60
 onFire -= 1
 noDamage = 0
white = true
alarm[0] = 5
statX = x
statY = y
yoffset = 15
audio_play_sound(sndHit,1,false,1,0,random_range(0.8,1.2))
}