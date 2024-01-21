extends Node

var player_1_score: int = 0
var player_2_score: int = 0

@onready var spawner = %Spawner
@onready var game_over_label = %GameOverLabel


func _on_spawner_ball_died(zone: int):
	if zone == 1:
		player_1_score+=1
	else:
		player_2_score+=1
		
	if player_1_score >= 3:
		game_over_label.text = "Player 1 wins!"
		game_over_label.visible = true
	elif player_2_score >= 3:
		game_over_label.text = "Player 2 wins!"
		game_over_label.visible = true
	else:
		spawner.spawn()
