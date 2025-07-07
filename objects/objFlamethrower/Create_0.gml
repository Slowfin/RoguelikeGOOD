gun = "flamethrower"

ogBullets = 150
maxBullets = ceil(ogBullets * objPlayer.moreAmmo)
bullets = maxBullets
shootCd = 0
maxShootCd = 3
reload = false
damage = 1
reloadTime = 180

mouseDir = point_direction(objPlayer.x,objPlayer.y,mouse_x,mouse_y)

isActive = false
shootKnockback = 0
inInventory = false
numb = random_range(0,10)
shop = false
outline = false
cost = 60 + irandom_range(-3,3)
fly = 0

offset = 5
particleOffset = 23
bulletOffset = 25

sprite = sprFlamethrower
spriteReload = sprFlamethrowerReload
spriteParticle = noone

soundReloadStart = sndReloadStart
soundReloadMiddle = sndReloadMiddle
soundReloadEnd = sndReloadEnd
relStartOffset = 0
relMiddleOffset = 0
relEndOffset = 0

fire = true
