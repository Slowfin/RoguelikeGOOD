randomize()
noDamage = 0
damageGot = 0
white = false
yoffset = 25
HP = 45
dead = false
deadTimer = 0
alert = false
alertDis = 200
attackDis = 8
sp = 1
path = path_add() 
coinDrop = 0
getHit =  false
canHurt = true

onFire = 0
fireDamage = 3
hitBy = ds_list_create()

	statX = x
	statY = y

pathDelay = 30
pathTimer = irandom(60)