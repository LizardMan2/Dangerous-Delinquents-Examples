extends Area2D
class_name Inputs

@export var isLever = false #False = button, True = lever
@export var isOn = false #Make true if you want a lever on by default

var colliding = false
var playerCollide = false


func _process(delta):
	if isLever and !GlobalCollectables.noclip: #Lever Logic
		if colliding and Input.is_action_just_released("interact"):
			if isOn:
				isOn = false
			else:
				isOn = true
			
	elif !GlobalCollectables.noclip and !(GlobalCollectables.fly and playerCollide):       #Button Logic
			isOn = colliding
	
	
	
	if isOn:   #Sprite Logic
		if isLever:
			$AnimatedSprite2D.animation = "Lvr_on"
		else:
			$AnimatedSprite2D.animation = "Btn_on"
	else:
		if isLever:
			$AnimatedSprite2D.animation = "Lvr_off"
		else:
			$AnimatedSprite2D.animation = "Btn_off"




func _on_area_entered(area):
	colliding = true
	playerCollide = area.name == "Interaction Collider"

func _on_area_exited(area):
	colliding = false
