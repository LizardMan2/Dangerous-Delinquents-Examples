extends Node

#Collectables
var coins = 0
var temp = 0

#Cheats
var god = false
var noclip = false
var fly = false

#Menus
var console = false
var pauseMenu = false
var isMenuActive = false

func _physics_process(delta):
	if temp != coins:
		print(coins)
		temp = coins
		
	isMenuActive = console or pauseMenu
