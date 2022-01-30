extends Sprite2D

signal hero_moved

func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		position.x -= 20
		hero_moved.emit("left")
	elif Input.is_action_just_pressed("ui_right"):
		position.x += 20
		hero_moved.emit("right")
