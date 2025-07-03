randomize()

global.bossDefeated = false
global.area = choose("green","grey","desert")
global.floor = 1

angle = -3
angleType = 0


tenseSpeed = 20
tensePower = 0
angle = 0
anglePower = 0

shakeX = 0
shakeY = 0

alarm[0] = tenseSpeed

sizeX = random_range(0.95,1.05)
sizeY = random_range(0.95,1.05)

alarm[2] = 20               

global.mp_grid = 0
global.showDamage = true




scrUpdateGrid()