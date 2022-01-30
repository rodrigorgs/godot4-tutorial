extends Sprite2D

@export
var velocidade = 5
@export_range(1, 40)
var aceleracao: int

func _process(delta):
	position += Vector2(velocidade, 0) * delta
	velocidade += aceleracao * delta
