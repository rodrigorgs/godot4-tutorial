extends Sprite2D

@export
var velocidade = 1.5

func _process(delta):
	rotate(velocidade * delta)
