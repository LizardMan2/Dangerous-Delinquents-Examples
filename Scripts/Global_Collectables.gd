extends Node


var coins = 0
var temp = 0

func _physics_process(delta):
	if temp != coins:
		print(coins)
		temp = coins
