switch state {
	case statesPlayer.alive: scrPlayerAlive() break
	case statesPlayer.dead: scrPlayerDead() break
	case statesPlayer.cantMove: scrPlayerCantMove() break
	case statesPlayer.teleport: scrPlayerTeleport() break
}