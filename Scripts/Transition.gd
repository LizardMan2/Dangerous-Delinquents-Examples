extends Area2D
##Scene to change to.
@export_file("*.tscn","*.scn") var goTo




func _on_area_entered(area):
	get_tree().change_scene_to_file(goTo)
