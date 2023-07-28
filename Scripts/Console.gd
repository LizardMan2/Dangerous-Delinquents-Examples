extends Area2D

var touching = false

func _physics_process(delta):
	if touching and Input.is_action_just_released("interact"):
		GlobalCollectables.console = !GlobalCollectables.console

func _on_area_entered(area):
	touching = true


func _on_area_exited(area):
	touching = false
