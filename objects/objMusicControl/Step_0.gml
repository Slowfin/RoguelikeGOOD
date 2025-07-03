if keyboard_check_pressed(ord("K")) {
	if global.muteMusic = false {
	audio_group_set_gain(Music,0,200)
	global.muteMusic = true
	} else {
	audio_group_set_gain(Music,1,200)
	global.muteMusic = false
	}
}

if keyboard_check_pressed(ord("L")) {
	if global.muteSounds = false {
	audio_group_set_gain(audiogroup_default,0,100)
	global.muteSounds = true
	} else {
	audio_group_set_gain(audiogroup_default,1,100)
	global.muteSounds = false
	}
}


if global.music = "Area" {
	musicToPlay = musLoca
}
if global.music = "Boss" {
	musicToPlay = musBoss
}
if global.music = "BossEnd" {
	musicToPlay = musBossEnd
}
if global.music = "Shop" {
	musicToPlay = musShop
}



if global.music = "Area" {
	if !audio_is_playing(musicToPlay)  {
		audio_stop_sound(musBoss)
		audio_stop_sound(musBossEnd)
		audio_stop_sound(musShop)
		if global.bossDefeated == false {
		audio_play_sound(musicToPlay,1,true)
		}
	}	
	if audio_is_paused(musicToPlay) {
		audio_resume_sound(musicToPlay)
		audio_stop_sound(musBoss)
		audio_stop_sound(musBossEnd)
		audio_stop_sound(musShop)
	}	
}
if global.music = "Boss" {
	if !audio_is_playing(musicToPlay) {
		audio_pause_sound(musLoca)
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
		audio_pause_sound(musLoca)
		audio_stop_sound(musBoss)
		audio_stop_sound(musShop)
		audio_play_sound(musicToPlay,1,false)
		alarm[0] = 166
	}
}
if global.music = "Shop" {
	if !audio_is_playing(musicToPlay) {
		audio_pause_sound(musLoca)
		audio_stop_sound(musBossEnd)
		audio_stop_sound(musBoss)
		audio_play_sound(musicToPlay,1,true)
	}	
	if audio_is_paused(musicToPlay) {
		audio_resume_sound(musicToPlay)
	}	
}
if global.music = noone {
	audio_pause_sound(musLoca)
	audio_stop_sound(musBoss)
	audio_stop_sound(musBossEnd)
	audio_stop_sound(musShop)
}

