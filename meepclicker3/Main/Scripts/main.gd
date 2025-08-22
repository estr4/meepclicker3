extends Node2D

@onready var icon: Sprite2D = $Icon
@onready var goldlabel = $"Gold-Label"

func _process(delta: float) -> void:
	icon.rotate(delta * 1.5)
	

func _on_button_pressed() -> void:
	Globals.gold = Big.add(Globals.gold, Globals.addedgold)
	var displaygold: String = "Gold: "+Globals.gold.toScientific()
	goldlabel.text = displaygold
