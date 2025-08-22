extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var goldlabel = $"Gold-Label"

func _ready() -> void:
	animated_sprite_2d.play()

func _process(delta: float) -> void:
	animated_sprite_2d.rotate(delta * 1.5)
	
func _on_button_pressed() -> void:
	Globals.gold = Big.add(Globals.gold, Globals.addedgold)
	var displaygold: String = "Gold: "+Globals.gold.toScientific()
	goldlabel.text = displaygold
