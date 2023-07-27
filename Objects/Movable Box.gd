extends RigidBody2D





func _on_body_entered(body):
	print("Hello")
	linear_velocity.x += body.velocity.x


func _on_body_exited(body):
	linear_velocity.x = 0
