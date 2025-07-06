depth = -9999

if alpha > 0 {
alpha = lerp(alpha,0,0.05)	
}

if objPlayer.HP == 5 {
	tenseSpeed = 20
	tensePower = 0	
	anglePower = 0
}
if objPlayer.HP == 4 {
	tenseSpeed = 20
	tensePower = 0.01
	anglePower = 0
}
if objPlayer.HP == 3 {
	tenseSpeed = 15
	tensePower = 0.02
	anglePower = 1
}
if objPlayer.HP == 2 {
	tenseSpeed = 10
	tensePower = 0.05
	anglePower = 2
}
if objPlayer.HP == 1 {
	tenseSpeed = 5
	tensePower = 0.1
	anglePower = 5
}