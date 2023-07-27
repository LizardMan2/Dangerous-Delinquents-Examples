extends Area2D

func _on_area_entered(area):
	GlobalCollectables.coins += 1
	queue_free()
