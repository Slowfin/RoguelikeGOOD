audio_sound_pitch(musicToPlay,pitch)	

if keyboard_check_pressed(ord("K")) {
	if global.muteMusic == false {
	audio_group_set_gain(Music,0,200)
	global.muteMusic = true
	} else {
	audio_group_set_gain(Music,1,200)
	global.muteMusic = false
	}
}

if keyboard_check_pressed(ord("L")) {
	if global.muteSounds == false {
	audio_group_set_gain(audiogroup_default,0,100)
	global.muteSounds = true
	} else {
	audio_group_set_gain(audiogroup_default,1,100)
	global.muteSounds = false
	}
}


if global.music == "Area" {
	if global.area = "grey" {
		audio_stop_sound(musAreaWest)
		audio_stop_sound(musAreaJungle)
		musicToPlay = musArea
	}
	if global.area == "desert" {
		audio_stop_sound(musArea)
		audio_stop_sound(musAreaJungle)
		musicToPlay = musAreaWest
	}
	if global.area == "green" {
		audio_stop_sound(musArea)
		audio_stop_sound(musAreaWest)
		musicToPlay = musAreaJungle
	}
}
if global.music == "Boss" {
	if global.area = "grey" {
		audio_stop_sound(musBossDesert)
		audio_stop_sound(musBossJungle)
		musicToPlay = musBoss
	}
	if global.area == "desert" {
		audio_stop_sound(musBoss)
		audio_stop_sound(musBossJungle)
		musicToPlay = musBossDesert
	}
	if global.area == "green" {
		audio_stop_sound(musBoss)
		audio_stop_sound(musBossDesert)
		musicToPlay = musBossJungle
	}
}
if global.music = "BossEnd" {
	if global.area == "green" {
		audio_stop_sound(musBossJungle)
		musicToPlay = musBossEndJungle
	}
	else if global.area == "grey"{
		audio_stop_sound(musBoss)
		musicToPlay = musBossEnd
	}
	else if global.area == "desert"{
		audio_stop_sound(musBossDesert)
		musicToPlay = musBossEndDesert
	}
}
if global.music = "Shop" {
	musicToPlay = musShop
}





if global.music = "Area" {
	if !audio_is_playing(musicToPlay)  {
		audio_stop_sound(musBoss)
		audio_stop_sound(musBossDesert)
		audio_stop_sound(musBossJungle)
		audio_stop_sound(musBossEnd)
		audio_stop_sound(musShop)
		if global.bossDefeated == false {
		audio_play_sound(musicToPlay,1,true)
		}
	}	
	if audio_is_paused(musicToPlay) {
		audio_resume_sound(musicToPlay)
		audio_stop_sound(musBoss)
		audio_stop_sound(musBossDesert)
		audio_stop_sound(musBossJungle)
		audio_stop_sound(musBossEnd)
		audio_stop_sound(musShop)
	}	
}
if global.music = "Boss" {
	if !audio_is_playing(musicToPlay) {
		audio_pause_sound(musAreaJungle)
		audio_pause_sound(musAreaWest)
		audio_pause_sound(musArea)
		audio_stop_sound(musBossEnd)
		audio_stop_sound(musShop)
		audio_play_sound(musicToPlay,1,true)
	}	
	if audio_is_paused(musicToPlay) {
		audio_resume_sound(musicToPlay)
	}	
}
if global.music = "BossEnd" {
	if !audio_is_playing(musicToPlay) {
		audio_pause_sound(musAreaJungle)
		audio_pause_sound(musAreaWest)
		audio_pause_sound(musArea)
		audio_stop_sound(musBoss)
		audio_stop_sound(musBossDesert)
		audio_stop_sound(musBossJungle)
		audio_stop_sound(musShop)
		audio_play_sound(musicToPlay,1,false)
		alarm[0] = audio_sound_length(musicToPlay) * 60
	}
}
if global.music = "Shop" {
	if !audio_is_playing(musicToPlay) {
		audio_pause_sound(musAreaJungle)
		audio_pause_sound(musAreaWest)
		audio_pause_sound(musArea)
		audio_stop_sound(musBossEnd)
		audio_stop_sound(musBoss)
		audio_stop_sound(musBossDesert)
		audio_stop_sound(musBossJungle)
		audio_play_sound(musicToPlay,1,true)
	}	
	if audio_is_paused(musicToPlay) {
		audio_resume_sound(musicToPlay)
	}	
}
if global.music = noone {
	audio_pause_sound(musAreaJungle)
	audio_pause_sound(musAreaWest)
	audio_pause_sound(musArea)
	audio_stop_sound(musBoss)
	audio_stop_sound(musBossDesert)
	audio_stop_sound(musBossJungle)
	audio_stop_sound(musBossEnd)
	audio_stop_sound(musShop)
}

if slowMusic {
	pitch = lerp(pitch,0.5,0.05)
} else {
	pitch = lerp(pitch,1,0.1)
}
