global.music = "Boss"	

randomize()
noDamage = 0
damageGot = 0
white = false
yoffset = 25
MaxHP = 600
HP = MaxHP
getHit = false
deadTimer = 0
alert = false
alertDis = 300
attackDis = 5
attack = 0
sp = 1
path = path_add() 

	statX = x
	statY = y

pathTimer = irandom(60)
pathDelay = 30
attackTimer = irandom_range(120,160)
attackDelay = attackTimer

attackLong = 150
attackTime = attackLong
attackSpeed = 5
attackSpeedDec = attackSpeed

jumpGrv = 0.2
jumpTime = 0
jumpVsp = 0
once = 0

canHurt = true

coinDrop = irandom_range(30,50)

onFire = 0
fireDamage = 5
hitBy = ds_list_create()

whiteX = 100

spIdle = sprBoss
spEndJump = sprBossEndjump
spJump = sprBossJump
spPreJump = sprBossPrejump
spPreThrow = sprBossPrethrow
spPreThrow2 = sprBossPrethrow2
spRun = sprBossRun
spThrow = sprBossThrow
spThrowUp = sprBossThrowUp

up = false


enum statesBoss1
{
	idle,
	alert,
	attack1,
	attack2,
	died
}

state = statesBoss1.idle
