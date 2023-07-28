extends CanvasLayer



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$HackMenu.visible = GlobalCollectables.console



func _on_fly_toggled(button_pressed):
	GlobalCollectables.fly = button_pressed
	print(button_pressed)



func _on_noclip_toggled(button_pressed):
	GlobalCollectables.noclip = button_pressed


func _on_godmode_toggled(button_pressed):
	GlobalCollectables.god = button_pressed
