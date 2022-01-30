extends Node2D


func _ready():
	# Instancia com código
	var key4_scene = load("res://scenes/Cena12_Key.tscn")
	var key4 = key4_scene.instantiate()
	key4.name = "Key4"
	key4.velocidade = -4
	key4.position = Vector2(120, 73)
	add_child(key4)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
