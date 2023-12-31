extends CharacterBody2D

@export var respawnLocation: Area2D

@export var SPEED = 300.0
@export var JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
@export var gravity = 980
var death = 0


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	if death > 0:
		position = respawnLocation.position


func _on_area_2d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	death += 1

func _on_area_2d_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	death -= 1

# Checkpoint collision checking
func _on_cp_collider_area_entered(area):
	respawnLocation.global_position = area.position
