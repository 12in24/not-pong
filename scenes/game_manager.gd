extends Node

var score: int = 0

@onready var spawner = %Spawner
@onready var game_over_label = %GameOverLabel


func _on_spawner_ball_died():
	if score < 3:
		spawner.spawn()	
	else:
		game_over_label.visible = true
