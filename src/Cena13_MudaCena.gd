extends Node2D

func _ready():
	$Button.pressed.connect(muda_cena)

func muda_cena():
	get_tree().change_scene("res://tutorials/Cena12_Instance.tscn")
