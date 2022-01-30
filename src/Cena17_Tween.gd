extends Node2D

var distance = 16
var time = 0.25

@onready
var tween = Tween.new()

func _process(_delta):
	if Input.is_action_just_pressed("ui_left"):
		if not tween.is_valid():
			tween = create_tween()
			tween.tween_property($Sprite2D, "position:x", $Sprite2D.position.x - distance, time)
			await tween.finished
			print('Finished going left')
	if Input.is_action_just_pressed("ui_right"):
		if not tween.is_valid():
			tween = create_tween()
			tween.set_parallel(true)
			tween.tween_property($Sprite2D, "position:x", $Sprite2D.position.x + distance, time)
			tween.tween_property($Sprite2D, "scale", Vector2(1.5, 1.5), time)
			tween.chain()
			tween.set_parallel(false)
			tween.tween_interval(0.1)
			tween.tween_property($Sprite2D, "scale", Vector2(1, 1), time).set_trans(Tween.TRANS_QUAD)
			tween.tween_callback(func(): print('Finished tweening'))
