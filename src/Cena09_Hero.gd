extends Sprite2D

func _process(delta):
	if Input.is_action_just_pressed("ui_select"):
		var friend = get_node("Friend")
		if is_instance_valid(friend):
			friend.queue_free()
