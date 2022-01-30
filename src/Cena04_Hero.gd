extends Sprite2D

var velocidade = 5

func _process(delta):
	position += Vector2(velocidade, 0) * delta
	velocidade += 10 * delta
