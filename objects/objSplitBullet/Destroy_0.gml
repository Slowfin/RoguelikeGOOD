with instance_create_layer(x,y,"Glow",objBulletParticle) { 
	image_angle = random(360)
	sprite_index = sprBulletParticle
}

for (var i = 0; i < 360; i += 60) {
	with instance_create_layer(x+lengthdir_x(4,i),y+lengthdir_y(4,i),"Glow",objSplitPiece) {
		direction  = i
		image_angle = i
		fire = other.fire
	}
}
audio_play_sound(sndLaser2,1,false,1,0,random_range(0.9,1.1))