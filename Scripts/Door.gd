extends StaticBody2D


@export var defaultOpen = false
@export var inputs: Array[Inputs]

##0 = AND, 1 = OR, 2 = XOR
@export var logicMode = 0
var state = false
var open = false
var lastOpen = false
# Called when the node enters the scene tree for the first time.
func _ready():
	if defaultOpen:
		$AnimatedSprite2D.frame = 8
	else:
		$AnimatedSprite2D.frame = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	state = calculateInputs()
	if defaultOpen:
		open = !state
	else:
		open = state
	
	if open != lastOpen:
		if open:
			$AnimatedSprite2D.play("Open")
			$CollisionShape2D.disabled = true
		else:
			$AnimatedSprite2D.play("Close")
			$CollisionShape2D.disabled = false
		lastOpen = open



func calculateInputs():
	var tempState = false
	
	for thing in inputs:
		
		if logicMode == 0:    #AND logic
			tempState = thing.isOn
			if tempState == false:
				return false

		if logicMode == 1:    #OR logic
			if thing.isOn == true:
				return true

		if logicMode == 2:
			if thing.isOn:
				tempState = !tempState
	return tempState
