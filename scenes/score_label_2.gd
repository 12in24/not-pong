extends Label

@onready var game_manager = %GameManager

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = str(game_manager.player_2_score)
