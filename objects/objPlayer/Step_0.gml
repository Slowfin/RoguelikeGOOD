switch state {
	case statesPlayer.alive: scrPlayerAlive() break
	case statesPlayer.dead: scrPlayerDead() break
	case statesPlayer.cantMove: scrPlayerCantMove() break
	case statesPlayer.teleport: scrPlayerTeleport() break
}

if state == statesPlayer.dead and deadTimer > 30  {
	objMusicControl.slowMusic = true  	
} else {
	objMusicControl.slowMusic = false	
}