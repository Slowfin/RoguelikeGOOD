randomize()



switch (state)
{
	case statesMad.idle: scrMadIdle() break
	case statesMad.alert: scrMadAlert() break
	case statesMad.attack: scrMadAttack() break
	case statesMad.died: scrMadDied() break
}


