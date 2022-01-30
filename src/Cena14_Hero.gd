extends CharacterBody2D

var speed = 50
var direction = Vector2.ZERO

func _physics_process(delta):
	get_input()
	motion_velocity = direction * speed
	move_and_slide()

func get_input():
	direction = Vector2.ZERO
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")
	direction = direction.normalized()
