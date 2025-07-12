gun = "pistol"

ogBullets = 7
maxBullets = ceil(ogBullets * objPlayer.moreAmmo)
bullets = maxBullets
shootCd = 0
maxShootCd = 30
reload = false
damage = 11
reloadTime = 60

mouseDir = point_direction(objPlayer.x,objPlayer.y,mouse_x,mouse_y)

isActive = false
shootKnockback = 0
inInventory = true
numb = random_range(0,10)
shop = false
outline = false
cost = 20 + irandom_range(-3,3)
fly = 0

shoot = false

offset = 5
particleOffset = 12
bulletOffset = 8
sprite = sprGun
spriteShoot = sprGunShoot
spriteReload = sprGunReload
spriteParticle = sprBulletParticle3
soundReloadStart = sndReloadStart
soundReloadMiddle = sndReloadMiddle
soundReloadEnd = sndReloadEnd
relStartOffset = 0
relMiddleOffset = 0
relEndOffset = 0

