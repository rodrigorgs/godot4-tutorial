extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Area.body_entered.connect(on_body_entered)
	$Area.body_exited.connect(on_body_exited)

func on_body_entered(body):
	print('entered ', body)
	$Area/Sprite2D.modulate.a = 0.5

func on_body_exited(body):
	$Area/Sprite2D.modulate.a = 1.0
