extends Node2D

func _ready():
	$Hero.hero_moved.connect(update_label)

func update_label(label):
	$DirectionLabel.text = "Moved " + label
