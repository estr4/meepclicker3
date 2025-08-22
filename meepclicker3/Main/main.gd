extends Node2D

@onready var icon: Sprite2D = $Icon

func _process(delta: float) -> void:
	icon.rotate(delta * 1.5)
