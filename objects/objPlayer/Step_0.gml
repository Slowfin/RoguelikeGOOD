switch state {
	case statesPlayer.alive: scrPlayerAlive() break
	case statesPlayer.dead: scrPlayerDead() break
	case statesPlayer.cantMove: scrPlayerCantMove() break
	case statesPlayer.teleport: scrPlayerTeleport() break
}

if state == statesPlayer.dead  {
	objMusicControl.slowMusic = true  	
} else {
	objMusicControl.slowMusic = false	
}