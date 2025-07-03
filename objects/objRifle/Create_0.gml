gun = "rifle"

ogBullets = 15
maxBullets = ceil(ogBullets * objPlayer.moreAmmo)
bullets = maxBullets
shootCd = 0
maxShootCd = 7
reload = false
damage = 4
reloadTime = 90

isActive = false
shootKnockback = 0
inInventory = false
numb = random_range(0,10)
shop = false
outline = false
cost = 40 + irandom_range(-3,3)
fly = 0