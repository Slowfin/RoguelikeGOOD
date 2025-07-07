randomize()
noDamage = 0
damageGot = 0
white = false
yoffset = 25
HP = 80
deadTimer = 0
alert = false
alertDis = 300
attackDis = 1
attack = false
sp = 0.75
path = path_add() 
coinDrop = irandom_range(5,7)
getHit =  false
canHurt = true

onFire = 0
fireDamage = 5
hitBy = ds_list_create()

	statX = x
	statY = y

pathTimer = irandom(60)
pathDelay = 30
attackTimer = irandom_range(120,160)
attackDelay = attackTimer

attackLong = 90
attackTime = attackLong
attackSpeed = 10
attackSpeedDec = attackSpeed

enum statesMad
{
	idle,
	alert,
	attack,
	died
}

state = statesMad.idle