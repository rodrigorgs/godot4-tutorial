extends Node2D

func _ready():
	$Button.pressed.connect(func(): print("Clicou"))
	$Button.pressed.connect($Hero.move)
