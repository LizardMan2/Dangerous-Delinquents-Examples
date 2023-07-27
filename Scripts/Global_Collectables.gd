extends Node


var coins = 0
var temp = 0

var god = false
var noclip = false
var fly = false

func _physics_process(delta):
	if temp != coins:
		print(coins)
		temp = coins
