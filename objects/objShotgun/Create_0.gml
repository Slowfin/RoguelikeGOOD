gun = "shotgun"

ogBullets = 5
maxBullets = ceil(ogBullets * objPlayer.moreAmmo)
bullets = maxBullets
maxShootCd = 60
shootCd = 0
reload = false
damage = 7

isActive = false
reloadTime = 120
shootKnockback = 0
cantChange = 0
inInventory = false
numb = random_range(0,10)
shop = false
outline = false  
cost = 50 + irandom_range(-3,3)
fly = 0