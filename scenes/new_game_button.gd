extends Button

@onready var game_manager = %GameManager


func _on_button_up():
	game_manager.reset()
