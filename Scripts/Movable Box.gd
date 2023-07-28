extends CharacterBody2D


@export var gravity = 980
var left = false
var right = false

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	if !GlobalCollectables.noclip:
		if left:
			velocity.x = 200
		elif right:
			velocity.x = -200
		else:
			velocity.x = 0
		
	move_and_slide()


func _on_left_area_entered(area):
	left = true

func _on_left_area_exited(area):
	left = false

func _on_right_area_entered(area):
	right = true

func _on_right_area_exited(area):
	right = false
