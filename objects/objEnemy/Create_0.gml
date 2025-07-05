randomize()
noDamage = 0
damageGot = 0
white = false
yoffset = 25
HP = 45
deadTimer = 0
alert = false
alertDis = 300
attackDis = 1
attack = false
sp = 0.8
path = path_add() 
coinDrop = irandom_range(3,5)
getHit =  false

onFire = 0


	statX = x
	statY = y

pathTimer = irandom(60)
pathDelay = 30
attackTimer = irandom_range(120,160)
attackDelay = attackTimer

enum states
{
	idle,
	alert,
	attack,
	died
}

state = states.idle