extends Node2D

func _ready():
	$Button.pressed.connect(func(): print("Clicou"))
	$Button.pressed.connect($Hero.move)


func _on_button_pressed():
	print("Pressionou botão")
	print("  O sinal foi conectado a este método")
	print("  usando a aba Node do editor.")
