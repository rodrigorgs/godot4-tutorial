extends Sprite2D

func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		$Friend.scale += Vector2(0.2, 0.2)
	if Input.is_action_just_pressed("ui_right"):
		$Friend/Key.rotate(0.5)
