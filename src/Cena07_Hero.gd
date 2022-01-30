extends Sprite2D

var velocidade = 60

func _process(delta):
	var direcao = 0
	if Input.is_action_pressed("ui_left"):
		direcao -= 1
	if Input.is_action_pressed("ui_right"):
		direcao += 1
	if Input.is_action_just_pressed("ui_select"):
		position.y -= 8
	
	position.x += direcao * velocidade * delta
