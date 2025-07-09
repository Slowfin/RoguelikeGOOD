gun = "splitGun"

ogBullets = 8
maxBullets = ceil(ogBullets * objPlayer.moreAmmo)
bullets = maxBullets
shootCd = 0
maxShootCd = 55
reload = false
damage = 10
damagePiece = 1
reloadTime = 90


mouseDir = point_direction(objPlayer.x,objPlayer.y,mouse_x,mouse_y)

isActive = false
shootKnockback = 0
inInventory = false
numb = random_range(0,10)
shop = false
outline = false
cost = 30 + irandom_range(-3,3)
fly = 0

offset = 5
particleOffset = 18
bulletOffset = 14
sprite = sprSplitGun
spriteReload = sprSplitGun
spriteParticle = sprBulletParticle5
soundReloadStart = sndReloadStart
soundReloadMiddle = sndReloadMiddle
soundReloadEnd = sndReloadEnd
relStartOffset = 0
relMiddleOffset = 0
relEndOffset = 0


