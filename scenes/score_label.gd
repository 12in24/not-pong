extends Label

@onready var game_state = %GameState

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = str(game_state.score)
