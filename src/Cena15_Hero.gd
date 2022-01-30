extends RigidDynamicBody2D

var speed = 50

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	linear_velocity.x = direction * speed
	
	if Input.is_action_just_pressed("ui_up"):
		if linear_velocity.y == 0:
			print('jump')
			linear_velocity.y = -speed * 2.5
	
