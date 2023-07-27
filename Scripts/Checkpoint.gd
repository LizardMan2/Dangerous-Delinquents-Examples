extends Area2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	$Flag.animation = "Green"


func _on_area_exited(area):
	$Flag.animation = "Red"


func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	pass # Replace with function body.
