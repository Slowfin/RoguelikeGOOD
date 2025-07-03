randomize()



switch (state)
{
	case states.idle: scrEnemyIdle() break
	case states.alert: scrEnemyAlert() break
	case states.attack: scrEnemyAttack() break
	case states.died: scrEnemyDied() break
}


