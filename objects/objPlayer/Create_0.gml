enum statesPlayer {
	alive,
	dead,
	cantMove,
	teleport
}

state = statesPlayer.alive

basicSp = 1.5
sp = basicSp

hsp = 0
vsp = 0

sprite[RIGHT] = sprPlayerWalkRight
sprite[UP] = sprPlayerWalkUp
sprite[LEFT] = sprPlayerWalkLeft
sprite[DOWN] = sprPlayerWalkDown

face = DOWN

canMove = true
canDoor = true

bullets = 0
maxBullets = 0

curGun = "pistol"
curSlot = 1
actGun = 0
firstSlot = "pistol"
secondSlot = noone

MaxHP = 5
HP = MaxHP 
money = 0

baseHurtTime = 90
hurtTime = 0
deadTimer = 0
exploded = false

rotateTp = -5

wallhack = false

global.cantChange = 0

// stats
// шанс на огненные пули
fireChanse = 0
// урон от огня
global.fireDamage = 3
// скорость пуль
bulletSpeed = 1
// скорость стрельбы
shootSpeed = 1
// больше патронов
moreAmmo =  1
// скорость перезарядки
reloadSpeed =  1
// долговечность пуль
bulletLife =  1
// скорость персонажа
speedMultip = 0

